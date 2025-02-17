/*
 * Copyright (C)2005-2019 Haxe Foundation
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 */

package hl;

enum abstract PixelFormat(Int) {
	var RGB = 0;
	var BGR = 1;
	var RGBX = 2;
	var BGRX = 3;
	var XBGR = 4;
	var XRGB = 5;
	var GRAY = 6;
	var RGBA = 7;
	var BGRA = 8;
	var ABGR = 9;
	var ARGB = 10;
	var CMYK = 11;
}

/**
	These are the bindings for the HL `fmt.hdll` library, which contains various low level formats handling.
**/
class Format {
	/**
		Decode JPG data into the target buffer.
	**/
	@:hlNative("fmt", "jpg_decode")
	public static function decodeJPG(src:hl.Bytes, srcLen:Int, dst:hl.Bytes, width:Int, height:Int, stride:Int, format:PixelFormat, flags:Int):Bool {
		return false;
	}

	/**
		Decode PNG data into the target buffer.
	**/
	@:hlNative("fmt", "png_decode")
	public static function decodePNG(src:hl.Bytes, srcLen:Int, dst:hl.Bytes, width:Int, height:Int, stride:Int, format:PixelFormat, flags:Int):Bool {
		return false;
	}

	/**
		Decode any image data into ARGB pixels
	**/
	#if (hl_ver >= version("1.10.0"))
	@:hlNative("fmt", "dxt_decode")
	public static function decodeDXT(src:hl.Bytes, dst:hl.Bytes, width:Int, height:Int, dxtFormat:Int):Bool {
		return false;
	}
	#end

	/**
		Upscale/downscale an image.
		Currently supported flag bits: 1 = bilinear filtering
	**/
	@:hlNative("fmt", "img_scale")
	public static function scaleImage(out:hl.Bytes, outPos:Int, outStride:Int, outWidth:Int, outHeight:Int, _in:hl.Bytes, inPos:Int, inStride:Int,
		inWidth:Int, inHeight:Int, flags:Int) {}

	/**
		Performs a cryptographic digest of some bytes.
		0 = Md5 , 1 = Sha1 , 2 = Crc32, 3 = Adler32
		Set 256 flag to tell the src are String bytes.
	**/
	@:hlNative("fmt", "digest")
	public static function digest(out:hl.Bytes, src:hl.Bytes, srcLen:Int, algorithm:Int) {}
}

class Mikktspace {
	public var buffer:hl.BytesAccess<Single>;
	public var stride:Int;
	public var xPos:Int;
	public var normalPos:Int;
	public var uvPos:Int;
	public var tangents:hl.BytesAccess<Single>;
	public var tangentStride:Int;
	public var tangentPos:Int;
	public var indexes:hl.BytesAccess<Int>;
	public var indices:Int;

	public function new() {}

	public function compute(threshold = 180.) {
		if (!_compute(this, threshold))
			throw "assert";
	}

	@:hlNative("fmt", "compute_mikkt_tangents") static function _compute(m:Dynamic, threshold:Float):Bool {
		return false;
	}
}

#if (hl_ver >= version("1.15.0"))
class MeshOptimizer {
	/**
	Generates a vertex remap table from the vertex buffer and an optional index buffer and returns number of unique vertices
	As a result, all vertices that are binary equivalent map to the same (new) location, with no gaps in the resulting sequence.
	Resulting remap table maps old vertices to new vertices and can be used in remapVertexBuffer/remapIndexBuffer.
	Note that binary equivalence considers all vertexSize bytes, including padding which should be zero-initialized.

	remapOut must contain enough space for the resulting remap table (vertexCount elements)
	indices can be null if the input is unindexed
	**/
	@:hlNative("fmt", "generate_vertex_remap")
	public static function generateVertexRemap(remapOut:hl.Bytes, indices:hl.Bytes, indexCount:Int, vertices:hl.Bytes, vertexCount:Int, vertexSize:Int) : Int {
		return 0;
	}

	/**
	Generate index buffer from the source index buffer and remap table generated by generateVertexRemap

	indicesOut must contain enough space for the resulting index buffer (indexCount elements)
	indicesIn can be null if the input is unindexed
	**/
	@:hlNative("fmt", "remap_index_buffer")
	public static function remapIndexBuffer(indicesOut:hl.Bytes, indicesIn:hl.Bytes, indexCount:Int, remap:hl.Bytes) {}

	/**
	Generates vertex buffer from the source vertex buffer and remap table generated by generateVertexRemap

	vertexOut must contain enough space for the resulting vertex buffer (vertexCount elements, returned by generateVertexRemap)
	vertexCount should be the initial vertex count and not the value returned by generateVertexRemap
	**/
	@:hlNative("fmt", "remap_vertex_buffer")
	public static function remapVertexBuffer(verticesOut:hl.Bytes, verticesIn:hl.Bytes, vertexCount:Int, vertexSize:Int, remap:hl.Bytes) {}

	/**
	Mesh simplifier
	Reduces the number of triangles in the mesh, attempting to preserve mesh appearance as much as possible
	The algorithm tries to preserve mesh topology and can stop short of the target goal based on topology constraints or target error.
	If not all attributes from the input mesh are required, it's recommended to reindex the mesh without them prior to simplification.
	Returns the number of indices after simplification, with destination containing new index data
	The resulting index buffer references vertices from the original vertex buffer.
	If the original vertex data isn't required, creating a compact vertex buffer using optimizeVertexFetch is recommended.

	indicesOut must contain enough space for the target index buffer, worst case is indexCount elements (*not* targetIndexCount)!
	vertices should have float3 position in the first 12 bytes of each vertex
	targetError represents the error relative to mesh extents that can be tolerated, e.g. 0.01 = 1% deformation; value range [0..1]
	options must be a bitmask composed of meshopt_SimplifyX options; 0 is a safe default
	resultErrorOut can be null; when it's not null, it will contain the resulting (relative) error after simplification
	**/
	@:hlNative("fmt", "simplify")
	public static function simplify(indicesOut:hl.Bytes, indicesIn:hl.Bytes, indexCount:Int, vertices:hl.Bytes, vertexCount:Int, vertexSize:Int, targetIndexCount:Int, targetError:Single, options:Int, resultErrorOut:hl.Bytes) : Int {
		return 0;
	}

	/**
	Vertex transform cache optimizer
	Reorders indices to reduce the number of GPU vertex shader invocations
	If index buffer contains multiple ranges for multiple draw calls, this functions needs to be called on each range individually.

	indicesOut must contain enough space for the resulting index buffer (indexCount elements)
	**/
	@:hlNative("fmt", "optimize_vertex_cache")
	public static function optimizeVertexCache(indicesOut:hl.Bytes, indicesIn:hl.Bytes, indexCount:Int, vertexCount:Int) {}

	/**
	Overdraw optimizer
	Reorders indices to reduce the number of GPU vertex shader invocations and the pixel overdraw
	If index buffer contains multiple ranges for multiple draw calls, this functions needs to be called on each range individually.

	indicesOut must contain enough space for the resulting index buffer (indexCount elements)
	indicesIn must contain index data that is the result of optimizeVertexCache (*not* the original mesh indices!)
	vertices should have float3 position in the first 12 bytes of each vertex
	threshold indicates how much the overdraw optimizer can degrade vertex cache efficiency (1.05 = up to 5%) to reduce overdraw more efficiently
	**/
	@:hlNative("fmt", "optimize_overdraw")
	public static function optimizeOverdraw(indicesOut:hl.Bytes, indicesIn:hl.Bytes, indexCount:Int, vertices:hl.Bytes, vertexCount:Int, vertexSize:Int, threshold:Single) {}

	/**
	Vertex fetch cache optimizer
	Reorders vertices and changes indices to reduce the amount of GPU memory fetches during vertex processing
	Returns the number of unique vertices, which is the same as input vertex count unless some vertices are unused

	verticesOut must contain enough space for the resulting vertex buffer (vertexCount elements)
	indices is used both as an input and as an output index buffer
	**/
	@:hlNative("fmt", "optimize_vertex_fetch")
	public static function optimizeVertexFetch(verticesOut:hl.Bytes, indices:hl.Bytes, indexCount:Int, verticesIn:hl.Bytes, vertexCount:Int, vertexSize:Int) : Int {
		return 0;
	}
}
#end