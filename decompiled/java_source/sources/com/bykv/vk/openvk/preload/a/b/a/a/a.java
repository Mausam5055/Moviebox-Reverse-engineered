package com.bykv.vk.openvk.preload.a.b.a.a;

import java.text.ParseException;
import java.text.ParsePosition;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final TimeZone f20326a = TimeZone.getTimeZone("UTC");

    private static int a(String str, int i11) {
        while (i11 < str.length()) {
            char cCharAt = str.charAt(i11);
            if (cCharAt < '0' || cCharAt > '9') {
                return i11;
            }
            i11++;
        }
        return str.length();
    }

    private static int a(String str, int i11, int i12) throws NumberFormatException {
        int i13;
        int i14;
        if (i11 < 0 || i12 > str.length() || i11 > i12) {
            throw new NumberFormatException(str);
        }
        if (i11 < i12) {
            i14 = i11 + 1;
            int iDigit = Character.digit(str.charAt(i11), 10);
            if (iDigit < 0) {
                throw new NumberFormatException("Invalid number: " + str.substring(i11, i12));
            }
            i13 = -iDigit;
        } else {
            i13 = 0;
            i14 = i11;
        }
        while (i14 < i12) {
            int i15 = i14 + 1;
            int iDigit2 = Character.digit(str.charAt(i14), 10);
            if (iDigit2 < 0) {
                throw new NumberFormatException("Invalid number: " + str.substring(i11, i12));
            }
            i13 = (i13 * 10) - iDigit2;
            i14 = i15;
        }
        return -i13;
    }

    /* JADX WARN: Code duplicated, block: B:85:0x01be  */
    /* JADX WARN: Code duplicated, block: B:86:0x01c0  */
    /* JADX WARN: Code duplicated, block: B:89:0x01d9  */
    /* JADX WARN: Code duplicated, block: B:91:0x01df  */
    /* JADX WARN: Instruction removed from duplicated block: B:86:0x01c0, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:91:0x01df, please report this as an issue */
    public static Date a(String str, ParsePosition parsePosition) throws ParseException {
        String str2;
        String message;
        int i11;
        int i12;
        int i13;
        int iA;
        int length;
        TimeZone timeZone;
        char cCharAt;
        try {
            int index = parsePosition.getIndex();
            int i14 = index + 4;
            int iA2 = a(str, index, i14);
            if (a(str, i14, '-')) {
                i14 = index + 5;
            }
            int i15 = i14 + 2;
            int iA3 = a(str, i14, i15);
            if (a(str, i15, '-')) {
                i15 = i14 + 3;
            }
            int i16 = i15 + 2;
            int iA4 = a(str, i15, i16);
            boolean zA = a(str, i16, 'T');
            if (!zA && str.length() <= i16) {
                GregorianCalendar gregorianCalendar = new GregorianCalendar(iA2, iA3 - 1, iA4);
                parsePosition.setIndex(i16);
                return gregorianCalendar.getTime();
            }
            if (zA) {
                int i17 = i15 + 5;
                int iA5 = a(str, i15 + 3, i17);
                if (a(str, i17, ':')) {
                    i17 = i15 + 6;
                }
                int i18 = i17 + 2;
                int iA6 = a(str, i17, i18);
                if (a(str, i18, ':')) {
                    i18 = i17 + 3;
                }
                if (str.length() <= i18 || (cCharAt = str.charAt(i18)) == 'Z' || cCharAt == '+' || cCharAt == '-') {
                    i12 = iA6;
                    i13 = 0;
                    iA = 0;
                    i16 = i18;
                    i11 = iA5;
                } else {
                    int i19 = i18 + 2;
                    iA = a(str, i18, i19);
                    if (iA > 59 && iA < 63) {
                        iA = 59;
                    }
                    if (a(str, i19, '.')) {
                        int i20 = i18 + 3;
                        int iA7 = a(str, i18 + 4);
                        int iMin = Math.min(iA7, i18 + 6);
                        int iA8 = a(str, i20, iMin);
                        int i21 = iMin - i20;
                        if (i21 == 1) {
                            iA8 *= 100;
                        } else if (i21 == 2) {
                            iA8 *= 10;
                        }
                        i11 = iA5;
                        i16 = iA7;
                        i12 = iA6;
                        i13 = iA8;
                    } else {
                        i11 = iA5;
                        i16 = i19;
                        i12 = iA6;
                        i13 = 0;
                    }
                }
            } else {
                i11 = 0;
                i12 = 0;
                i13 = 0;
                iA = 0;
            }
            if (str.length() <= i16) {
                throw new IllegalArgumentException("No time zone indicator");
            }
            char cCharAt2 = str.charAt(i16);
            if (cCharAt2 == 'Z') {
                timeZone = f20326a;
                length = i16 + 1;
            } else {
                if (cCharAt2 != '+' && cCharAt2 != '-') {
                    throw new IndexOutOfBoundsException("Invalid time zone indicator '" + cCharAt2 + "'");
                }
                String strSubstring = str.substring(i16);
                if (strSubstring.length() < 5) {
                    strSubstring = strSubstring + "00";
                }
                length = i16 + strSubstring.length();
                if ("+0000".equals(strSubstring) || "+00:00".equals(strSubstring)) {
                    timeZone = f20326a;
                } else {
                    String strConcat = "GMT".concat(strSubstring);
                    TimeZone timeZone2 = TimeZone.getTimeZone(strConcat);
                    String id2 = timeZone2.getID();
                    if (!id2.equals(strConcat) && !id2.replace(":", "").equals(strConcat)) {
                        throw new IndexOutOfBoundsException("Mismatching time zone indicator: " + strConcat + " given, resolves to " + timeZone2.getID());
                    }
                    timeZone = timeZone2;
                }
            }
            GregorianCalendar gregorianCalendar2 = new GregorianCalendar(timeZone);
            gregorianCalendar2.setLenient(false);
            gregorianCalendar2.set(1, iA2);
            gregorianCalendar2.set(2, iA3 - 1);
            gregorianCalendar2.set(5, iA4);
            gregorianCalendar2.set(11, i11);
            gregorianCalendar2.set(12, i12);
            gregorianCalendar2.set(13, iA);
            gregorianCalendar2.set(14, i13);
            parsePosition.setIndex(length);
            return gregorianCalendar2.getTime();
        } catch (IllegalArgumentException e11) {
            e = e11;
            if (str == null) {
                str2 = null;
            } else {
                str2 = "\"" + str + '\"';
            }
            message = e.getMessage();
            if (message != null || message.isEmpty()) {
                message = "(" + e.getClass().getName() + ")";
            }
            ParseException parseException = new ParseException("Failed to parse date [" + str2 + "]: " + message, parsePosition.getIndex());
            parseException.initCause(e);
            throw parseException;
        } catch (IndexOutOfBoundsException e12) {
            e = e12;
            if (str == null) {
                str2 = null;
            } else {
                str2 = "\"" + str + '\"';
            }
            message = e.getMessage();
            if (message != null) {
                message = "(" + e.getClass().getName() + ")";
            } else {
                message = "(" + e.getClass().getName() + ")";
            }
            ParseException parseException2 = new ParseException("Failed to parse date [" + str2 + "]: " + message, parsePosition.getIndex());
            parseException2.initCause(e);
            throw parseException2;
        } catch (NumberFormatException e13) {
            e = e13;
            if (str == null) {
                str2 = null;
            } else {
                str2 = "\"" + str + '\"';
            }
            message = e.getMessage();
            if (message != null) {
                message = "(" + e.getClass().getName() + ")";
            } else {
                message = "(" + e.getClass().getName() + ")";
            }
            ParseException parseException3 = new ParseException("Failed to parse date [" + str2 + "]: " + message, parsePosition.getIndex());
            parseException3.initCause(e);
            throw parseException3;
        }
    }

    private static boolean a(String str, int i11, char c11) {
        return i11 < str.length() && str.charAt(i11) == c11;
    }
}
