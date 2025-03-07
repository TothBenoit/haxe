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

package js.html.webgl.extension;

/**
	The `EXT_texture_compression_bptc extension` is part of the WebGL API and exposes 4 BPTC compressed texture formats.

	Documentation [EXT_texture_compression_bptc](https://developer.mozilla.org/en-US/docs/Web/API/EXT_texture_compression_bptc) by [Mozilla Contributors](https://developer.mozilla.org/en-US/docs/Web/API/EXT_texture_compression_bptc/contributors.txt), licensed under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/).

	@see <https://developer.mozilla.org/en-US/docs/Web/API/EXT_texture_compression_bptc>
**/
@:native("EXT_texture_compression_bptc")
extern class EXTTextureCompressionBptc {

	/**
		Compresses 8-bit fixed-point data. Each 4x4 block of texels consists of 128 bits of RGBA or image data.
	**/
	static inline var COMPRESSED_RGBA_BPTC_UNORM : Int = 36492;

	/**
		Compresses 8-bit fixed-point data. Each 4x4 block of texels consists of 128 bits of SRGB_ALPHA or image data.
	**/
	static inline var COMPRESSED_SRGB_ALPHA_BPTC_UNORM : Int = 36493;

	/**
		Compresses high dynamic range signed floating point values. Each 4x4 block of texels consists of 128 bits of RGB data. It only contains RGB data, so the returned alpha value is 1.0.
	**/
	static inline var COMPRESSED_RGB_BPTC_SIGNED_FLOAT : Int = 36494;

	/**
		Compresses high dynamic range unsigned floating point values. Each 4x4 block of texels consists of 128 bits of RGB data. It only contains RGB data, so the returned alpha value is 1.0.
	**/
	static inline var COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT : Int = 36495;

}