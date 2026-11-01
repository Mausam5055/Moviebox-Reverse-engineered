package com.google.gson.internal.bind.util;

import java.text.ParseException;
import java.text.ParsePosition;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes4.dex */
public class ISO8601Utils {
    private static final String UTC_ID = "UTC";
    private static final TimeZone TIMEZONE_UTC = TimeZone.getTimeZone(UTC_ID);

    private static boolean checkOffset(String str, int i11, char c11) {
        return i11 < str.length() && str.charAt(i11) == c11;
    }

    public static String format(Date date) {
        return format(date, false, TIMEZONE_UTC);
    }

    public static String format(Date date, boolean z10) {
        return format(date, z10, TIMEZONE_UTC);
    }

    public static String format(Date date, boolean z10, TimeZone timeZone) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar(timeZone, Locale.US);
        gregorianCalendar.setTime(date);
        StringBuilder sb2 = new StringBuilder(19 + (z10 ? 4 : 0) + (timeZone.getRawOffset() == 0 ? 1 : 6));
        padInt(sb2, gregorianCalendar.get(1), 4);
        sb2.append('-');
        padInt(sb2, gregorianCalendar.get(2) + 1, 2);
        sb2.append('-');
        padInt(sb2, gregorianCalendar.get(5), 2);
        sb2.append('T');
        padInt(sb2, gregorianCalendar.get(11), 2);
        sb2.append(':');
        padInt(sb2, gregorianCalendar.get(12), 2);
        sb2.append(':');
        padInt(sb2, gregorianCalendar.get(13), 2);
        if (z10) {
            sb2.append('.');
            padInt(sb2, gregorianCalendar.get(14), 3);
        }
        int offset = timeZone.getOffset(gregorianCalendar.getTimeInMillis());
        if (offset != 0) {
            int i11 = offset / 60000;
            int iAbs = Math.abs(i11 / 60);
            int iAbs2 = Math.abs(i11 % 60);
            sb2.append(offset >= 0 ? '+' : '-');
            padInt(sb2, iAbs, 2);
            sb2.append(':');
            padInt(sb2, iAbs2, 2);
        } else {
            sb2.append('Z');
        }
        return sb2.toString();
    }

    private static int indexOfNonDigit(String str, int i11) {
        while (i11 < str.length()) {
            char cCharAt = str.charAt(i11);
            if (cCharAt < '0' || cCharAt > '9') {
                return i11;
            }
            i11++;
        }
        return str.length();
    }

    private static void padInt(StringBuilder sb2, int i11, int i12) {
        String string = Integer.toString(i11);
        for (int length = i12 - string.length(); length > 0; length--) {
            sb2.append('0');
        }
        sb2.append(string);
    }

    /* JADX WARN: Code duplicated, block: B:85:0x01d3  */
    /* JADX WARN: Code duplicated, block: B:86:0x01d5  */
    /* JADX WARN: Code duplicated, block: B:89:0x01ef  */
    /* JADX WARN: Code duplicated, block: B:91:0x01f5  */
    /* JADX WARN: Instruction removed from duplicated block: B:86:0x01d5, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:91:0x01f5, please report this as an issue */
    public static Date parse(String str, ParsePosition parsePosition) throws ParseException {
        String str2;
        String message;
        int i11;
        int i12;
        int i13;
        int i14;
        int length;
        TimeZone timeZone;
        char cCharAt;
        try {
            int index = parsePosition.getIndex();
            int i15 = index + 4;
            int i16 = parseInt(str, index, i15);
            if (checkOffset(str, i15, '-')) {
                i15 = index + 5;
            }
            int i17 = i15 + 2;
            int i18 = parseInt(str, i15, i17);
            if (checkOffset(str, i17, '-')) {
                i17 = i15 + 3;
            }
            int i19 = i17 + 2;
            int i20 = parseInt(str, i17, i19);
            boolean zCheckOffset = checkOffset(str, i19, 'T');
            if (!zCheckOffset && str.length() <= i19) {
                GregorianCalendar gregorianCalendar = new GregorianCalendar(i16, i18 - 1, i20);
                gregorianCalendar.setLenient(false);
                parsePosition.setIndex(i19);
                return gregorianCalendar.getTime();
            }
            if (zCheckOffset) {
                int i21 = i17 + 5;
                int i22 = parseInt(str, i17 + 3, i21);
                if (checkOffset(str, i21, ':')) {
                    i21 = i17 + 6;
                }
                int i23 = i21 + 2;
                int i24 = parseInt(str, i21, i23);
                if (checkOffset(str, i23, ':')) {
                    i23 = i21 + 3;
                }
                if (str.length() <= i23 || (cCharAt = str.charAt(i23)) == 'Z' || cCharAt == '+' || cCharAt == '-') {
                    i12 = i24;
                    i13 = 0;
                    i14 = 0;
                    i19 = i23;
                    i11 = i22;
                } else {
                    int i25 = i23 + 2;
                    i14 = parseInt(str, i23, i25);
                    if (i14 > 59 && i14 < 63) {
                        i14 = 59;
                    }
                    if (checkOffset(str, i25, '.')) {
                        int i26 = i23 + 3;
                        int iIndexOfNonDigit = indexOfNonDigit(str, i23 + 4);
                        int iMin = Math.min(iIndexOfNonDigit, i23 + 6);
                        int i27 = parseInt(str, i26, iMin);
                        int i28 = iMin - i26;
                        if (i28 == 1) {
                            i27 *= 100;
                        } else if (i28 == 2) {
                            i27 *= 10;
                        }
                        i11 = i22;
                        i19 = iIndexOfNonDigit;
                        i12 = i24;
                        i13 = i27;
                    } else {
                        i11 = i22;
                        i19 = i25;
                        i12 = i24;
                        i13 = 0;
                    }
                }
            } else {
                i11 = 0;
                i12 = 0;
                i13 = 0;
                i14 = 0;
            }
            if (str.length() <= i19) {
                throw new IllegalArgumentException("No time zone indicator");
            }
            char cCharAt2 = str.charAt(i19);
            if (cCharAt2 == 'Z') {
                timeZone = TIMEZONE_UTC;
                length = i19 + 1;
            } else {
                if (cCharAt2 != '+' && cCharAt2 != '-') {
                    throw new IndexOutOfBoundsException("Invalid time zone indicator '" + cCharAt2 + "'");
                }
                String strSubstring = str.substring(i19);
                if (strSubstring.length() < 5) {
                    strSubstring = strSubstring + "00";
                }
                length = i19 + strSubstring.length();
                if ("+0000".equals(strSubstring) || "+00:00".equals(strSubstring)) {
                    timeZone = TIMEZONE_UTC;
                } else {
                    String str3 = "GMT" + strSubstring;
                    TimeZone timeZone2 = TimeZone.getTimeZone(str3);
                    String id2 = timeZone2.getID();
                    if (!id2.equals(str3) && !id2.replace(":", "").equals(str3)) {
                        throw new IndexOutOfBoundsException("Mismatching time zone indicator: " + str3 + " given, resolves to " + timeZone2.getID());
                    }
                    timeZone = timeZone2;
                }
            }
            GregorianCalendar gregorianCalendar2 = new GregorianCalendar(timeZone);
            gregorianCalendar2.setLenient(false);
            gregorianCalendar2.set(1, i16);
            gregorianCalendar2.set(2, i18 - 1);
            gregorianCalendar2.set(5, i20);
            gregorianCalendar2.set(11, i11);
            gregorianCalendar2.set(12, i12);
            gregorianCalendar2.set(13, i14);
            gregorianCalendar2.set(14, i13);
            parsePosition.setIndex(length);
            return gregorianCalendar2.getTime();
        } catch (IndexOutOfBoundsException e11) {
            e = e11;
            if (str == null) {
                str2 = null;
            } else {
                str2 = '\"' + str + '\"';
            }
            message = e.getMessage();
            if (message != null || message.isEmpty()) {
                message = "(" + e.getClass().getName() + ")";
            }
            ParseException parseException = new ParseException("Failed to parse date [" + str2 + "]: " + message, parsePosition.getIndex());
            parseException.initCause(e);
            throw parseException;
        } catch (NumberFormatException e12) {
            e = e12;
            if (str == null) {
                str2 = null;
            } else {
                str2 = '\"' + str + '\"';
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
        } catch (IllegalArgumentException e13) {
            e = e13;
            if (str == null) {
                str2 = null;
            } else {
                str2 = '\"' + str + '\"';
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

    private static int parseInt(String str, int i11, int i12) throws NumberFormatException {
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
}
