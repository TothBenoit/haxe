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

package java.lang;

@:native("") // make sure the generator won't see this
@:transitive
@:forwardStatics
@:forward abstract Character(CharacterClass) from CharacterClass to CharacterClass {
	@:to extern inline public function toCharacter():jvm.Char16
		return this.charValue();

	@:from extern inline public static function fromCharacter(b:jvm.Char16):Character
		return CharacterClass.valueOf(b);
}

@:native("java.lang.Character") extern class CharacterClass implements Comparable<Character> {
	@:overload function new(param1:jvm.Char16):Void;
	@:overload function charValue():jvm.Char16;
	@:overload function compareTo(param1:Character):Int;
	@:overload function compareTo(param1:Dynamic):Int;
	@:overload function equals(param1:Dynamic):Bool;
	@:overload function hashCode():Int;
	@:overload function toString():String;
	static final COMBINING_SPACING_MARK:jvm.Char16;
	static final CONNECTOR_PUNCTUATION:jvm.Char16;
	static final CONTROL:jvm.Char16;
	static final CURRENCY_SYMBOL:jvm.Char16;
	static final DASH_PUNCTUATION:jvm.Char16;
	static final DECIMAL_DIGIT_NUMBER:jvm.Char16;
	static final DIRECTIONALITY_ARABIC_NUMBER:jvm.Char16;
	static final DIRECTIONALITY_BOUNDARY_NEUTRAL:jvm.Char16;
	static final DIRECTIONALITY_COMMON_NUMBER_SEPARATOR:jvm.Char16;
	static final DIRECTIONALITY_EUROPEAN_NUMBER:jvm.Char16;
	static final DIRECTIONALITY_EUROPEAN_NUMBER_SEPARATOR:jvm.Char16;
	static final DIRECTIONALITY_EUROPEAN_NUMBER_TERMINATOR:jvm.Char16;
	static final DIRECTIONALITY_LEFT_TO_RIGHT:jvm.Char16;
	static final DIRECTIONALITY_LEFT_TO_RIGHT_EMBEDDING:jvm.Char16;
	static final DIRECTIONALITY_LEFT_TO_RIGHT_OVERRIDE:jvm.Char16;
	static final DIRECTIONALITY_NONSPACING_MARK:jvm.Char16;
	static final DIRECTIONALITY_OTHER_NEUTRALS:jvm.Char16;
	static final DIRECTIONALITY_PARAGRAPH_SEPARATOR:jvm.Char16;
	static final DIRECTIONALITY_POP_DIRECTIONAL_FORMAT:jvm.Char16;
	static final DIRECTIONALITY_RIGHT_TO_LEFT:jvm.Char16;
	static final DIRECTIONALITY_RIGHT_TO_LEFT_ARABIC:jvm.Char16;
	static final DIRECTIONALITY_RIGHT_TO_LEFT_EMBEDDING:jvm.Char16;
	static final DIRECTIONALITY_RIGHT_TO_LEFT_OVERRIDE:jvm.Char16;
	static final DIRECTIONALITY_SEGMENT_SEPARATOR:jvm.Char16;
	static final DIRECTIONALITY_UNDEFINED:jvm.Char16;
	static final DIRECTIONALITY_WHITESPACE:jvm.Char16;
	static final ENCLOSING_MARK:jvm.Char16;
	static final END_PUNCTUATION:jvm.Char16;
	static final FINAL_QUOTE_PUNCTUATION:jvm.Char16;
	static final FORMAT:jvm.Char16;
	static final INITIAL_QUOTE_PUNCTUATION:jvm.Char16;
	static final LETTER_NUMBER:jvm.Char16;
	static final LINE_SEPARATOR:jvm.Char16;
	static final LOWERCASE_LETTER:jvm.Char16;
	static final MATH_SYMBOL:jvm.Char16;
	static final MAX_CODE_POINT:Int;
	static final MAX_HIGH_SURROGATE:jvm.Char16;
	static final MAX_LOW_SURROGATE:jvm.Char16;
	static final MAX_RADIX:Int;
	static final MAX_SURROGATE:jvm.Char16;
	static final MAX_VALUE:jvm.Char16;
	static final MIN_CODE_POINT:Int;
	static final MIN_HIGH_SURROGATE:jvm.Char16;
	static final MIN_LOW_SURROGATE:jvm.Char16;
	static final MIN_RADIX:Int;
	static final MIN_SUPPLEMENTARY_CODE_POINT:Int;
	static final MIN_SURROGATE:jvm.Char16;
	static final MIN_VALUE:jvm.Char16;
	static final MODIFIER_LETTER:jvm.Char16;
	static final MODIFIER_SYMBOL:jvm.Char16;
	static final NON_SPACING_MARK:jvm.Char16;
	static final OTHER_LETTER:jvm.Char16;
	static final OTHER_NUMBER:jvm.Char16;
	static final OTHER_PUNCTUATION:jvm.Char16;
	static final OTHER_SYMBOL:jvm.Char16;
	static final PARAGRAPH_SEPARATOR:jvm.Char16;
	static final PRIVATE_USE:jvm.Char16;
	static final SIZE:Int;
	static final SPACE_SEPARATOR:jvm.Char16;
	static final START_PUNCTUATION:jvm.Char16;
	static final SURROGATE:jvm.Char16;
	static final TITLECASE_LETTER:jvm.Char16;
	static final TYPE:Class<Character>;
	static final UNASSIGNED:jvm.Char16;
	static final UPPERCASE_LETTER:jvm.Char16;
	@:overload static function charCount(param1:Int):Int;
	@:overload static function codePointAt(param1:CharSequence, param2:Int):Int;
	@:overload static function codePointAt(param1:java.NativeArray<jvm.Char16>, param2:Int, param3:Int):Int;
	@:overload static function codePointAt(param1:java.NativeArray<jvm.Char16>, param2:Int):Int;
	@:overload static function codePointBefore(param1:CharSequence, param2:Int):Int;
	@:overload static function codePointBefore(param1:java.NativeArray<jvm.Char16>, param2:Int, param3:Int):Int;
	@:overload static function codePointBefore(param1:java.NativeArray<jvm.Char16>, param2:Int):Int;
	@:overload static function codePointCount(param1:CharSequence, param2:Int, param3:Int):Int;
	@:overload static function codePointCount(param1:java.NativeArray<jvm.Char16>, param2:Int, param3:Int):Int;
	@:overload static function compare(param1:jvm.Char16, param2:jvm.Char16):Int;
	@:overload static function digit(param1:jvm.Char16, param2:Int):Int;
	@:overload static function digit(param1:Int, param2:Int):Int;
	@:overload static function forDigit(param1:Int, param2:Int):jvm.Char16;
	@:overload static function getDirectionality(param1:jvm.Char16):jvm.Char16;
	@:overload static function getDirectionality(param1:Int):jvm.Char16;
	@:overload static function getName(param1:Int):String;
	@:overload static function getNumericValue(param1:jvm.Char16):Int;
	@:overload static function getNumericValue(param1:Int):Int;
	@:overload static function getType(param1:jvm.Char16):Int;
	@:overload static function getType(param1:Int):Int;
	@:overload static function highSurrogate(param1:Int):jvm.Char16;
	@:overload static function isAlphabetic(param1:Int):Bool;
	@:overload static function isBmpCodePoint(param1:Int):Bool;
	@:overload static function isDefined(param1:jvm.Char16):Bool;
	@:overload static function isDefined(param1:Int):Bool;
	@:overload static function isDigit(param1:jvm.Char16):Bool;
	@:overload static function isDigit(param1:Int):Bool;
	@:overload static function isHighSurrogate(param1:jvm.Char16):Bool;
	@:overload static function isISOControl(param1:jvm.Char16):Bool;
	@:overload static function isISOControl(param1:Int):Bool;
	@:overload static function isIdentifierIgnorable(param1:jvm.Char16):Bool;
	@:overload static function isIdentifierIgnorable(param1:Int):Bool;
	@:overload static function isIdeographic(param1:Int):Bool;
	@:overload static function isJavaIdentifierPart(param1:jvm.Char16):Bool;
	@:overload static function isJavaIdentifierPart(param1:Int):Bool;
	@:overload static function isJavaIdentifierStart(param1:jvm.Char16):Bool;
	@:overload static function isJavaIdentifierStart(param1:Int):Bool;
	@:overload @:deprecated static function isJavaLetter(param1:jvm.Char16):Bool;
	@:overload @:deprecated static function isJavaLetterOrDigit(param1:jvm.Char16):Bool;
	@:overload static function isLetter(param1:jvm.Char16):Bool;
	@:overload static function isLetter(param1:Int):Bool;
	@:overload static function isLetterOrDigit(param1:jvm.Char16):Bool;
	@:overload static function isLetterOrDigit(param1:Int):Bool;
	@:overload static function isLowSurrogate(param1:jvm.Char16):Bool;
	@:overload static function isLowerCase(param1:jvm.Char16):Bool;
	@:overload static function isLowerCase(param1:Int):Bool;
	@:overload static function isMirrored(param1:jvm.Char16):Bool;
	@:overload static function isMirrored(param1:Int):Bool;
	@:overload @:deprecated static function isSpace(param1:jvm.Char16):Bool;
	@:overload static function isSpaceChar(param1:jvm.Char16):Bool;
	@:overload static function isSpaceChar(param1:Int):Bool;
	@:overload static function isSupplementaryCodePoint(param1:Int):Bool;
	@:overload static function isSurrogate(param1:jvm.Char16):Bool;
	@:overload static function isSurrogatePair(param1:jvm.Char16, param2:jvm.Char16):Bool;
	@:overload static function isTitleCase(param1:jvm.Char16):Bool;
	@:overload static function isTitleCase(param1:Int):Bool;
	@:overload static function isUnicodeIdentifierPart(param1:jvm.Char16):Bool;
	@:overload static function isUnicodeIdentifierPart(param1:Int):Bool;
	@:overload static function isUnicodeIdentifierStart(param1:jvm.Char16):Bool;
	@:overload static function isUnicodeIdentifierStart(param1:Int):Bool;
	@:overload static function isUpperCase(param1:jvm.Char16):Bool;
	@:overload static function isUpperCase(param1:Int):Bool;
	@:overload static function isValidCodePoint(param1:Int):Bool;
	@:overload static function isWhitespace(param1:jvm.Char16):Bool;
	@:overload static function isWhitespace(param1:Int):Bool;
	@:overload static function lowSurrogate(param1:Int):jvm.Char16;
	@:overload static function offsetByCodePoints(param1:CharSequence, param2:Int, param3:Int):Int;
	@:overload static function offsetByCodePoints(param1:java.NativeArray<jvm.Char16>, param2:Int, param3:Int, param4:Int, param5:Int):Int;
	@:overload static function reverseBytes(param1:jvm.Char16):jvm.Char16;
	@:overload static function toChars(param1:Int, param2:java.NativeArray<jvm.Char16>, param3:Int):Int;
	@:overload static function toChars(param1:Int):java.NativeArray<jvm.Char16>;
	@:overload static function toCodePoint(param1:jvm.Char16, param2:jvm.Char16):Int;
	@:overload static function toLowerCase(param1:jvm.Char16):jvm.Char16;
	@:overload static function toLowerCase(param1:Int):Int;
	@:native("toString") @:overload static function _toString(param1:jvm.Char16):String;
	@:overload static function toTitleCase(param1:jvm.Char16):jvm.Char16;
	@:overload static function toTitleCase(param1:Int):Int;
	@:overload static function toUpperCase(param1:jvm.Char16):jvm.Char16;
	@:overload static function toUpperCase(param1:Int):Int;
	@:overload static function valueOf(param1:jvm.Char16):Character;
}

@:realPath("java.lang.Character_CharacterCache") @:javaNative @:native("java.lang.Character$CharacterCache") @:javaCanonical("java.lang",
	"Character.CharacterCache") extern class Character_CharacterCache {}

@:realPath("java.lang.Character_Subset") @:javaNative @:native("java.lang.Character$Subset") @:javaCanonical("java.lang",
	"Character.Subset") extern class Character_Subset {
	@:overload final function equals(param1:Dynamic):Bool;
	@:overload final function hashCode():Int;
	@:overload final function toString():String;
}

@:realPath("java.lang.Character_UnicodeBlock") @:javaNative @:native("java.lang.Character$UnicodeBlock") @:javaCanonical("java.lang",
	"Character.UnicodeBlock") extern final class Character_UnicodeBlock extends Character_Subset {
	static final AEGEAN_NUMBERS:Character_UnicodeBlock;
	static final ALCHEMICAL_SYMBOLS:Character_UnicodeBlock;
	static final ALPHABETIC_PRESENTATION_FORMS:Character_UnicodeBlock;
	static final ANCIENT_GREEK_MUSICAL_NOTATION:Character_UnicodeBlock;
	static final ANCIENT_GREEK_NUMBERS:Character_UnicodeBlock;
	static final ANCIENT_SYMBOLS:Character_UnicodeBlock;
	static final ARABIC:Character_UnicodeBlock;
	static final ARABIC_PRESENTATION_FORMS_A:Character_UnicodeBlock;
	static final ARABIC_PRESENTATION_FORMS_B:Character_UnicodeBlock;
	static final ARABIC_SUPPLEMENT:Character_UnicodeBlock;
	static final ARMENIAN:Character_UnicodeBlock;
	static final ARROWS:Character_UnicodeBlock;
	static final AVESTAN:Character_UnicodeBlock;
	static final BALINESE:Character_UnicodeBlock;
	static final BAMUM:Character_UnicodeBlock;
	static final BAMUM_SUPPLEMENT:Character_UnicodeBlock;
	static final BASIC_LATIN:Character_UnicodeBlock;
	static final BATAK:Character_UnicodeBlock;
	static final BENGALI:Character_UnicodeBlock;
	static final BLOCK_ELEMENTS:Character_UnicodeBlock;
	static final BOPOMOFO:Character_UnicodeBlock;
	static final BOPOMOFO_EXTENDED:Character_UnicodeBlock;
	static final BOX_DRAWING:Character_UnicodeBlock;
	static final BRAHMI:Character_UnicodeBlock;
	static final BRAILLE_PATTERNS:Character_UnicodeBlock;
	static final BUGINESE:Character_UnicodeBlock;
	static final BUHID:Character_UnicodeBlock;
	static final BYZANTINE_MUSICAL_SYMBOLS:Character_UnicodeBlock;
	static final CARIAN:Character_UnicodeBlock;
	static final CHAM:Character_UnicodeBlock;
	static final CHEROKEE:Character_UnicodeBlock;
	static final CJK_COMPATIBILITY:Character_UnicodeBlock;
	static final CJK_COMPATIBILITY_FORMS:Character_UnicodeBlock;
	static final CJK_COMPATIBILITY_IDEOGRAPHS:Character_UnicodeBlock;
	static final CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT:Character_UnicodeBlock;
	static final CJK_RADICALS_SUPPLEMENT:Character_UnicodeBlock;
	static final CJK_STROKES:Character_UnicodeBlock;
	static final CJK_SYMBOLS_AND_PUNCTUATION:Character_UnicodeBlock;
	static final CJK_UNIFIED_IDEOGRAPHS:Character_UnicodeBlock;
	static final CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Character_UnicodeBlock;
	static final CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B:Character_UnicodeBlock;
	static final CJK_UNIFIED_IDEOGRAPHS_EXTENSION_C:Character_UnicodeBlock;
	static final CJK_UNIFIED_IDEOGRAPHS_EXTENSION_D:Character_UnicodeBlock;
	static final COMBINING_DIACRITICAL_MARKS:Character_UnicodeBlock;
	static final COMBINING_DIACRITICAL_MARKS_SUPPLEMENT:Character_UnicodeBlock;
	static final COMBINING_HALF_MARKS:Character_UnicodeBlock;
	static final COMBINING_MARKS_FOR_SYMBOLS:Character_UnicodeBlock;
	static final COMMON_INDIC_NUMBER_FORMS:Character_UnicodeBlock;
	static final CONTROL_PICTURES:Character_UnicodeBlock;
	static final COPTIC:Character_UnicodeBlock;
	static final COUNTING_ROD_NUMERALS:Character_UnicodeBlock;
	static final CUNEIFORM:Character_UnicodeBlock;
	static final CUNEIFORM_NUMBERS_AND_PUNCTUATION:Character_UnicodeBlock;
	static final CURRENCY_SYMBOLS:Character_UnicodeBlock;
	static final CYPRIOT_SYLLABARY:Character_UnicodeBlock;
	static final CYRILLIC:Character_UnicodeBlock;
	static final CYRILLIC_EXTENDED_A:Character_UnicodeBlock;
	static final CYRILLIC_EXTENDED_B:Character_UnicodeBlock;
	static final CYRILLIC_SUPPLEMENTARY:Character_UnicodeBlock;
	static final DESERET:Character_UnicodeBlock;
	static final DEVANAGARI:Character_UnicodeBlock;
	static final DEVANAGARI_EXTENDED:Character_UnicodeBlock;
	static final DINGBATS:Character_UnicodeBlock;
	static final DOMINO_TILES:Character_UnicodeBlock;
	static final EGYPTIAN_HIEROGLYPHS:Character_UnicodeBlock;
	static final EMOTICONS:Character_UnicodeBlock;
	static final ENCLOSED_ALPHANUMERICS:Character_UnicodeBlock;
	static final ENCLOSED_ALPHANUMERIC_SUPPLEMENT:Character_UnicodeBlock;
	static final ENCLOSED_CJK_LETTERS_AND_MONTHS:Character_UnicodeBlock;
	static final ENCLOSED_IDEOGRAPHIC_SUPPLEMENT:Character_UnicodeBlock;
	static final ETHIOPIC:Character_UnicodeBlock;
	static final ETHIOPIC_EXTENDED:Character_UnicodeBlock;
	static final ETHIOPIC_EXTENDED_A:Character_UnicodeBlock;
	static final ETHIOPIC_SUPPLEMENT:Character_UnicodeBlock;
	static final GENERAL_PUNCTUATION:Character_UnicodeBlock;
	static final GEOMETRIC_SHAPES:Character_UnicodeBlock;
	static final GEORGIAN:Character_UnicodeBlock;
	static final GEORGIAN_SUPPLEMENT:Character_UnicodeBlock;
	static final GLAGOLITIC:Character_UnicodeBlock;
	static final GOTHIC:Character_UnicodeBlock;
	static final GREEK:Character_UnicodeBlock;
	static final GREEK_EXTENDED:Character_UnicodeBlock;
	static final GUJARATI:Character_UnicodeBlock;
	static final GURMUKHI:Character_UnicodeBlock;
	static final HALFWIDTH_AND_FULLWIDTH_FORMS:Character_UnicodeBlock;
	static final HANGUL_COMPATIBILITY_JAMO:Character_UnicodeBlock;
	static final HANGUL_JAMO:Character_UnicodeBlock;
	static final HANGUL_JAMO_EXTENDED_A:Character_UnicodeBlock;
	static final HANGUL_JAMO_EXTENDED_B:Character_UnicodeBlock;
	static final HANGUL_SYLLABLES:Character_UnicodeBlock;
	static final HANUNOO:Character_UnicodeBlock;
	static final HEBREW:Character_UnicodeBlock;
	static final HIGH_PRIVATE_USE_SURROGATES:Character_UnicodeBlock;
	static final HIGH_SURROGATES:Character_UnicodeBlock;
	static final HIRAGANA:Character_UnicodeBlock;
	static final IDEOGRAPHIC_DESCRIPTION_CHARACTERS:Character_UnicodeBlock;
	static final IMPERIAL_ARAMAIC:Character_UnicodeBlock;
	static final INSCRIPTIONAL_PAHLAVI:Character_UnicodeBlock;
	static final INSCRIPTIONAL_PARTHIAN:Character_UnicodeBlock;
	static final IPA_EXTENSIONS:Character_UnicodeBlock;
	static final JAVANESE:Character_UnicodeBlock;
	static final KAITHI:Character_UnicodeBlock;
	static final KANA_SUPPLEMENT:Character_UnicodeBlock;
	static final KANBUN:Character_UnicodeBlock;
	static final KANGXI_RADICALS:Character_UnicodeBlock;
	static final KANNADA:Character_UnicodeBlock;
	static final KATAKANA:Character_UnicodeBlock;
	static final KATAKANA_PHONETIC_EXTENSIONS:Character_UnicodeBlock;
	static final KAYAH_LI:Character_UnicodeBlock;
	static final KHAROSHTHI:Character_UnicodeBlock;
	static final KHMER:Character_UnicodeBlock;
	static final KHMER_SYMBOLS:Character_UnicodeBlock;
	static final LAO:Character_UnicodeBlock;
	static final LATIN_1_SUPPLEMENT:Character_UnicodeBlock;
	static final LATIN_EXTENDED_A:Character_UnicodeBlock;
	static final LATIN_EXTENDED_ADDITIONAL:Character_UnicodeBlock;
	static final LATIN_EXTENDED_B:Character_UnicodeBlock;
	static final LATIN_EXTENDED_C:Character_UnicodeBlock;
	static final LATIN_EXTENDED_D:Character_UnicodeBlock;
	static final LEPCHA:Character_UnicodeBlock;
	static final LETTERLIKE_SYMBOLS:Character_UnicodeBlock;
	static final LIMBU:Character_UnicodeBlock;
	static final LINEAR_B_IDEOGRAMS:Character_UnicodeBlock;
	static final LINEAR_B_SYLLABARY:Character_UnicodeBlock;
	static final LISU:Character_UnicodeBlock;
	static final LOW_SURROGATES:Character_UnicodeBlock;
	static final LYCIAN:Character_UnicodeBlock;
	static final LYDIAN:Character_UnicodeBlock;
	static final MAHJONG_TILES:Character_UnicodeBlock;
	static final MALAYALAM:Character_UnicodeBlock;
	static final MANDAIC:Character_UnicodeBlock;
	static final MATHEMATICAL_ALPHANUMERIC_SYMBOLS:Character_UnicodeBlock;
	static final MATHEMATICAL_OPERATORS:Character_UnicodeBlock;
	static final MEETEI_MAYEK:Character_UnicodeBlock;
	static final MISCELLANEOUS_MATHEMATICAL_SYMBOLS_A:Character_UnicodeBlock;
	static final MISCELLANEOUS_MATHEMATICAL_SYMBOLS_B:Character_UnicodeBlock;
	static final MISCELLANEOUS_SYMBOLS:Character_UnicodeBlock;
	static final MISCELLANEOUS_SYMBOLS_AND_ARROWS:Character_UnicodeBlock;
	static final MISCELLANEOUS_SYMBOLS_AND_PICTOGRAPHS:Character_UnicodeBlock;
	static final MISCELLANEOUS_TECHNICAL:Character_UnicodeBlock;
	static final MODIFIER_TONE_LETTERS:Character_UnicodeBlock;
	static final MONGOLIAN:Character_UnicodeBlock;
	static final MUSICAL_SYMBOLS:Character_UnicodeBlock;
	static final MYANMAR:Character_UnicodeBlock;
	static final MYANMAR_EXTENDED_A:Character_UnicodeBlock;
	static final NEW_TAI_LUE:Character_UnicodeBlock;
	static final NKO:Character_UnicodeBlock;
	static final NUMBER_FORMS:Character_UnicodeBlock;
	static final OGHAM:Character_UnicodeBlock;
	static final OLD_ITALIC:Character_UnicodeBlock;
	static final OLD_PERSIAN:Character_UnicodeBlock;
	static final OLD_SOUTH_ARABIAN:Character_UnicodeBlock;
	static final OLD_TURKIC:Character_UnicodeBlock;
	static final OL_CHIKI:Character_UnicodeBlock;
	static final OPTICAL_CHARACTER_RECOGNITION:Character_UnicodeBlock;
	static final ORIYA:Character_UnicodeBlock;
	static final OSMANYA:Character_UnicodeBlock;
	static final PHAGS_PA:Character_UnicodeBlock;
	static final PHAISTOS_DISC:Character_UnicodeBlock;
	static final PHOENICIAN:Character_UnicodeBlock;
	static final PHONETIC_EXTENSIONS:Character_UnicodeBlock;
	static final PHONETIC_EXTENSIONS_SUPPLEMENT:Character_UnicodeBlock;
	static final PLAYING_CARDS:Character_UnicodeBlock;
	static final PRIVATE_USE_AREA:Character_UnicodeBlock;
	static final REJANG:Character_UnicodeBlock;
	static final RUMI_NUMERAL_SYMBOLS:Character_UnicodeBlock;
	static final RUNIC:Character_UnicodeBlock;
	static final SAMARITAN:Character_UnicodeBlock;
	static final SAURASHTRA:Character_UnicodeBlock;
	static final SHAVIAN:Character_UnicodeBlock;
	static final SINHALA:Character_UnicodeBlock;
	static final SMALL_FORM_VARIANTS:Character_UnicodeBlock;
	static final SPACING_MODIFIER_LETTERS:Character_UnicodeBlock;
	static final SPECIALS:Character_UnicodeBlock;
	static final SUNDANESE:Character_UnicodeBlock;
	static final SUPERSCRIPTS_AND_SUBSCRIPTS:Character_UnicodeBlock;
	static final SUPPLEMENTAL_ARROWS_A:Character_UnicodeBlock;
	static final SUPPLEMENTAL_ARROWS_B:Character_UnicodeBlock;
	static final SUPPLEMENTAL_MATHEMATICAL_OPERATORS:Character_UnicodeBlock;
	static final SUPPLEMENTAL_PUNCTUATION:Character_UnicodeBlock;
	static final SUPPLEMENTARY_PRIVATE_USE_AREA_A:Character_UnicodeBlock;
	static final SUPPLEMENTARY_PRIVATE_USE_AREA_B:Character_UnicodeBlock;
	@:deprecated static var SURROGATES_AREA:Character_UnicodeBlock;
	static final SYLOTI_NAGRI:Character_UnicodeBlock;
	static final SYRIAC:Character_UnicodeBlock;
	static final TAGALOG:Character_UnicodeBlock;
	static final TAGBANWA:Character_UnicodeBlock;
	static final TAGS:Character_UnicodeBlock;
	static final TAI_LE:Character_UnicodeBlock;
	static final TAI_THAM:Character_UnicodeBlock;
	static final TAI_VIET:Character_UnicodeBlock;
	static final TAI_XUAN_JING_SYMBOLS:Character_UnicodeBlock;
	static final TAMIL:Character_UnicodeBlock;
	static final TELUGU:Character_UnicodeBlock;
	static final THAANA:Character_UnicodeBlock;
	static final THAI:Character_UnicodeBlock;
	static final TIBETAN:Character_UnicodeBlock;
	static final TIFINAGH:Character_UnicodeBlock;
	static final TRANSPORT_AND_MAP_SYMBOLS:Character_UnicodeBlock;
	static final UGARITIC:Character_UnicodeBlock;
	static final UNIFIED_CANADIAN_ABORIGINAL_SYLLABICS:Character_UnicodeBlock;
	static final UNIFIED_CANADIAN_ABORIGINAL_SYLLABICS_EXTENDED:Character_UnicodeBlock;
	static final VAI:Character_UnicodeBlock;
	static final VARIATION_SELECTORS:Character_UnicodeBlock;
	static final VARIATION_SELECTORS_SUPPLEMENT:Character_UnicodeBlock;
	static final VEDIC_EXTENSIONS:Character_UnicodeBlock;
	static final VERTICAL_FORMS:Character_UnicodeBlock;
	static final YIJING_HEXAGRAM_SYMBOLS:Character_UnicodeBlock;
	static final YI_RADICALS:Character_UnicodeBlock;
	static final YI_SYLLABLES:Character_UnicodeBlock;
	@:overload final static function forName(param1:String):Character_UnicodeBlock;
	@:overload static function of(param1:jvm.Char16):Character_UnicodeBlock;
	@:overload static function of(param1:Int):Character_UnicodeBlock;
}

@:realPath("java.lang.Character_UnicodeScript") @:javaCanonical("java.lang",
	"Character.UnicodeScript") @:native("java.lang.Character$UnicodeScript") extern enum Character_UnicodeScript {
	COMMON;
	LATIN;
	GREEK;
	CYRILLIC;
	ARMENIAN;
	HEBREW;
	ARABIC;
	SYRIAC;
	THAANA;
	DEVANAGARI;
	BENGALI;
	GURMUKHI;
	GUJARATI;
	ORIYA;
	TAMIL;
	TELUGU;
	KANNADA;
	MALAYALAM;
	SINHALA;
	THAI;
	LAO;
	TIBETAN;
	MYANMAR;
	GEORGIAN;
	HANGUL;
	ETHIOPIC;
	CHEROKEE;
	CANADIAN_ABORIGINAL;
	OGHAM;
	RUNIC;
	KHMER;
	MONGOLIAN;
	HIRAGANA;
	KATAKANA;
	BOPOMOFO;
	HAN;
	YI;
	OLD_ITALIC;
	GOTHIC;
	DESERET;
	INHERITED;
	TAGALOG;
	HANUNOO;
	BUHID;
	TAGBANWA;
	LIMBU;
	TAI_LE;
	LINEAR_B;
	UGARITIC;
	SHAVIAN;
	OSMANYA;
	CYPRIOT;
	BRAILLE;
	BUGINESE;
	COPTIC;
	NEW_TAI_LUE;
	GLAGOLITIC;
	TIFINAGH;
	SYLOTI_NAGRI;
	OLD_PERSIAN;
	KHAROSHTHI;
	BALINESE;
	CUNEIFORM;
	PHOENICIAN;
	PHAGS_PA;
	NKO;
	SUNDANESE;
	BATAK;
	LEPCHA;
	OL_CHIKI;
	VAI;
	SAURASHTRA;
	KAYAH_LI;
	REJANG;
	LYCIAN;
	CARIAN;
	LYDIAN;
	CHAM;
	TAI_THAM;
	TAI_VIET;
	AVESTAN;
	EGYPTIAN_HIEROGLYPHS;
	SAMARITAN;
	MANDAIC;
	LISU;
	BAMUM;
	JAVANESE;
	MEETEI_MAYEK;
	IMPERIAL_ARAMAIC;
	OLD_SOUTH_ARABIAN;
	INSCRIPTIONAL_PARTHIAN;
	INSCRIPTIONAL_PAHLAVI;
	OLD_TURKIC;
	BRAHMI;
	KAITHI;
	UNKNOWN;
}
