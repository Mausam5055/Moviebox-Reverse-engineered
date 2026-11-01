package ir.ac.iust.htmlchardet;

import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes7.dex */
public enum Charsets {
    UTF_8("UTF-8"),
    UTF_16(C.UTF16_NAME),
    WINDOWS_1256("Windows-1256"),
    WINDOWS_1252("Windows-1252"),
    UTF_16BE("UTF-16BE"),
    UTF_16LE("UTF-16LE"),
    UTF_32BE("UTF-32BE"),
    UTF_32LE("UTF-32LE"),
    SHIFT_JIS("Shift_JIS"),
    ISO_2022_JP("ISO-2022-JP"),
    ISO_2022_CN("ISO-2022-CN"),
    ISO_2022_KR("ISO-2022-KR"),
    GB18030("GB18030"),
    EUC_JP("EUC-JP"),
    EUC_KR("EUC-KR"),
    BIG5("Big5"),
    ISO_8859_1("ISO-8859-1"),
    ISO_8859_2("ISO-8859-2"),
    ISO_8859_5("ISO-8859-5"),
    ISO_8859_6("ISO-8859-6"),
    ISO_8859_7("ISO-8859-7"),
    ISO_8859_8("ISO-8859-8"),
    ISO_8859_9("ISO-8859-9"),
    WINDOWS_1251("Windows-1251"),
    KOI8_R("KOI8-R"),
    IBM424_rtl("IBM424_rtl"),
    IBM424_ltr("IBM424_ltr"),
    IBM420_rtl("IBM420_rtl"),
    IBM420_ltr("IBM420_ltr"),
    UTF_32("UTF-32"),
    ISO_8859_15("ISO-8859-15"),
    GB2312("GB2312"),
    GBK("GBK"),
    US_ASCII(C.ASCII_NAME);

    private final String charsetType;

    Charsets(String str) {
        this.charsetType = str;
    }

    private static String canonicalize(String str) {
        if (str.equalsIgnoreCase("UTF8")) {
            return UTF_8.getValue();
        }
        if (str.equalsIgnoreCase("CP1251")) {
            return WINDOWS_1251.getValue();
        }
        if (str.equalsIgnoreCase("CP1252")) {
            return WINDOWS_1252.getValue();
        }
        if (str.equalsIgnoreCase("CP1256")) {
            return WINDOWS_1256.getValue();
        }
        if (str.equalsIgnoreCase("ISO8859-1")) {
            return ISO_8859_1.getValue();
        }
        if (str.equalsIgnoreCase("ZH-CN")) {
            return GBK.getValue();
        }
        if (str.equalsIgnoreCase("SHIFT-JIS") || str.equalsIgnoreCase("SJIS")) {
            return SHIFT_JIS.getValue();
        }
        return null;
    }

    public static boolean isValid(String str) {
        if (str == null || str.isEmpty()) {
            return false;
        }
        for (Charsets charsets : values()) {
            if (charsets.getValue().equalsIgnoreCase(str)) {
                return true;
            }
        }
        return canonicalize(str) != null;
    }

    public static String normalize(String str) {
        for (Charsets charsets : values()) {
            if (charsets.getValue().equalsIgnoreCase(str)) {
                return charsets.getValue();
            }
        }
        return canonicalize(str);
    }

    public String getValue() {
        return this.charsetType;
    }
}
