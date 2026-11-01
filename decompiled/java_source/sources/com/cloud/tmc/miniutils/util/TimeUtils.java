package com.cloud.tmc.miniutils.util;

import android.annotation.SuppressLint;
import android.os.Build;
import androidx.annotation.NonNull;
import com.cloud.tmc.miniutils.constant.TimeConstants;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.function.Supplier;

/* JADX INFO: loaded from: classes3.dex */
public final class TimeUtils {
    private static final String[] CHINESE_ZODIAC;
    private static final ThreadLocal<Map<String, SimpleDateFormat>> SDF_THREAD_LOCAL;
    private static final String[] ZODIAC;
    private static final int[] ZODIAC_FLAGS;

    static {
        if (Build.VERSION.SDK_INT >= 26) {
            SDF_THREAD_LOCAL = ThreadLocal.withInitial(new Supplier() { // from class: com.cloud.tmc.miniutils.util.m
                @Override // java.util.function.Supplier
                public final Object get() {
                    return new HashMap();
                }
            });
        } else {
            SDF_THREAD_LOCAL = new ThreadLocal<Map<String, SimpleDateFormat>>() { // from class: com.cloud.tmc.miniutils.util.TimeUtils.1
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // java.lang.ThreadLocal
                public Map<String, SimpleDateFormat> initialValue() {
                    return new HashMap();
                }
            };
        }
        CHINESE_ZODIAC = new String[]{"猴", "鸡", "狗", "猪", "鼠", "牛", "虎", "兔", "龙", "蛇", "马", "羊"};
        ZODIAC_FLAGS = new int[]{20, 19, 21, 21, 21, 22, 23, 23, 23, 24, 23, 22};
        ZODIAC = new String[]{"水瓶座", "双鱼座", "白羊座", "金牛座", "双子座", "巨蟹座", "狮子座", "处女座", "天秤座", "天蝎座", "射手座", "摩羯座"};
    }

    private TimeUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    public static void cleanup() {
        SDF_THREAD_LOCAL.remove();
    }

    public static long date2Millis(Date date) {
        return date.getTime();
    }

    public static String date2String(Date date) {
        return date2String(date, getDefaultFormat());
    }

    public static String date2String(Date date, @NonNull String str) {
        return getSafeDateFormat(str).format(date);
    }

    public static String date2String(Date date, @NonNull DateFormat dateFormat) {
        return dateFormat.format(date);
    }

    public static String getChineseWeek(long j11) {
        return getChineseWeek(new Date(j11));
    }

    public static String getChineseWeek(String str) {
        return getChineseWeek(string2Date(str, getDefaultFormat()));
    }

    public static String getChineseWeek(String str, @NonNull DateFormat dateFormat) {
        return getChineseWeek(string2Date(str, dateFormat));
    }

    public static String getChineseWeek(Date date) {
        return new SimpleDateFormat("E", Locale.CHINA).format(date);
    }

    public static String getChineseZodiac(int i11) {
        return CHINESE_ZODIAC[i11 % 12];
    }

    public static String getChineseZodiac(long j11) {
        return getChineseZodiac(millis2Date(j11));
    }

    public static String getChineseZodiac(String str) {
        return getChineseZodiac(string2Date(str, getDefaultFormat()));
    }

    public static String getChineseZodiac(String str, @NonNull DateFormat dateFormat) {
        return getChineseZodiac(string2Date(str, dateFormat));
    }

    public static String getChineseZodiac(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        return CHINESE_ZODIAC[calendar.get(1) % 12];
    }

    public static Date getDate(long j11, long j12, int i11) {
        return millis2Date(j11 + timeSpan2Millis(j12, i11));
    }

    public static Date getDate(String str, long j11, int i11) {
        return getDate(str, getDefaultFormat(), j11, i11);
    }

    public static Date getDate(String str, @NonNull DateFormat dateFormat, long j11, int i11) {
        return millis2Date(string2Millis(str, dateFormat) + timeSpan2Millis(j11, i11));
    }

    public static Date getDate(Date date, long j11, int i11) {
        return millis2Date(date2Millis(date) + timeSpan2Millis(j11, i11));
    }

    public static Date getDateByNow(long j11, int i11) {
        return getDate(getNowMills(), j11, i11);
    }

    private static SimpleDateFormat getDefaultFormat() {
        return getSafeDateFormat("yyyy-MM-dd HH:mm:ss");
    }

    public static String getFitTimeSpan(long j11, long j12, int i11) {
        return millis2FitTimeSpan(j11 - j12, i11);
    }

    public static String getFitTimeSpan(String str, String str2, int i11) {
        return millis2FitTimeSpan(string2Millis(str, getDefaultFormat()) - string2Millis(str2, getDefaultFormat()), i11);
    }

    public static String getFitTimeSpan(String str, String str2, @NonNull DateFormat dateFormat, int i11) {
        return millis2FitTimeSpan(string2Millis(str, dateFormat) - string2Millis(str2, dateFormat), i11);
    }

    public static String getFitTimeSpan(Date date, Date date2, int i11) {
        return millis2FitTimeSpan(date2Millis(date) - date2Millis(date2), i11);
    }

    public static String getFitTimeSpanByNow(long j11, int i11) {
        return getFitTimeSpan(j11, System.currentTimeMillis(), i11);
    }

    public static String getFitTimeSpanByNow(String str, int i11) {
        return getFitTimeSpan(str, getNowString(), getDefaultFormat(), i11);
    }

    public static String getFitTimeSpanByNow(String str, @NonNull DateFormat dateFormat, int i11) {
        return getFitTimeSpan(str, getNowString(dateFormat), dateFormat, i11);
    }

    public static String getFitTimeSpanByNow(Date date, int i11) {
        return getFitTimeSpan(date, getNowDate(), i11);
    }

    public static String getFriendlyTimeSpanByNow(long j11) {
        long jCurrentTimeMillis = System.currentTimeMillis() - j11;
        if (jCurrentTimeMillis < 0) {
            return String.format("%tc", Long.valueOf(j11));
        }
        if (jCurrentTimeMillis < 1000) {
            return "刚刚";
        }
        if (jCurrentTimeMillis < 60000) {
            return String.format(Locale.getDefault(), "%d秒前", Long.valueOf(jCurrentTimeMillis / 1000));
        }
        if (jCurrentTimeMillis < 3600000) {
            return String.format(Locale.getDefault(), "%d分钟前", Long.valueOf(jCurrentTimeMillis / 60000));
        }
        long weeOfToday = getWeeOfToday();
        if (j11 >= weeOfToday) {
            return String.format("今天%tR", Long.valueOf(j11));
        }
        return j11 >= weeOfToday - 86400000 ? String.format("昨天%tR", Long.valueOf(j11)) : String.format("%tF", Long.valueOf(j11));
    }

    public static String getFriendlyTimeSpanByNow(String str) {
        return getFriendlyTimeSpanByNow(str, getDefaultFormat());
    }

    public static String getFriendlyTimeSpanByNow(String str, @NonNull DateFormat dateFormat) {
        return getFriendlyTimeSpanByNow(string2Millis(str, dateFormat));
    }

    public static String getFriendlyTimeSpanByNow(Date date) {
        return getFriendlyTimeSpanByNow(date.getTime());
    }

    public static long getMillis(long j11, long j12, int i11) {
        return j11 + timeSpan2Millis(j12, i11);
    }

    public static long getMillis(String str, long j11, int i11) {
        return getMillis(str, getDefaultFormat(), j11, i11);
    }

    public static long getMillis(String str, @NonNull DateFormat dateFormat, long j11, int i11) {
        return string2Millis(str, dateFormat) + timeSpan2Millis(j11, i11);
    }

    public static long getMillis(Date date, long j11, int i11) {
        return date2Millis(date) + timeSpan2Millis(j11, i11);
    }

    public static long getMillisByNow(long j11, int i11) {
        return getMillis(getNowMills(), j11, i11);
    }

    public static Date getNowDate() {
        return new Date();
    }

    public static long getNowMills() {
        return System.currentTimeMillis();
    }

    public static String getNowString() {
        return millis2String(System.currentTimeMillis(), getDefaultFormat());
    }

    public static String getNowString(@NonNull DateFormat dateFormat) {
        return millis2String(System.currentTimeMillis(), dateFormat);
    }

    @SuppressLint({"SimpleDateFormat"})
    public static SimpleDateFormat getSafeDateFormat(String str) {
        Map<String, SimpleDateFormat> map = SDF_THREAD_LOCAL.get();
        SimpleDateFormat simpleDateFormat = map.get(str);
        if (simpleDateFormat != null) {
            return simpleDateFormat;
        }
        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat(str);
        map.put(str, simpleDateFormat2);
        return simpleDateFormat2;
    }

    public static String getString(long j11, long j12, int i11) {
        return getString(j11, getDefaultFormat(), j12, i11);
    }

    public static String getString(long j11, @NonNull DateFormat dateFormat, long j12, int i11) {
        return millis2String(j11 + timeSpan2Millis(j12, i11), dateFormat);
    }

    public static String getString(String str, long j11, int i11) {
        return getString(str, getDefaultFormat(), j11, i11);
    }

    public static String getString(String str, @NonNull DateFormat dateFormat, long j11, int i11) {
        return millis2String(string2Millis(str, dateFormat) + timeSpan2Millis(j11, i11), dateFormat);
    }

    public static String getString(Date date, long j11, int i11) {
        return getString(date, getDefaultFormat(), j11, i11);
    }

    public static String getString(Date date, @NonNull DateFormat dateFormat, long j11, int i11) {
        return millis2String(date2Millis(date) + timeSpan2Millis(j11, i11), dateFormat);
    }

    public static String getStringByNow(long j11, int i11) {
        return getStringByNow(j11, getDefaultFormat(), i11);
    }

    public static String getStringByNow(long j11, @NonNull DateFormat dateFormat, int i11) {
        return getString(getNowMills(), dateFormat, j11, i11);
    }

    public static long getTimeSpan(long j11, long j12, int i11) {
        return millis2TimeSpan(j11 - j12, i11);
    }

    public static long getTimeSpan(String str, String str2, int i11) {
        return getTimeSpan(str, str2, getDefaultFormat(), i11);
    }

    public static long getTimeSpan(String str, String str2, @NonNull DateFormat dateFormat, int i11) {
        return millis2TimeSpan(string2Millis(str, dateFormat) - string2Millis(str2, dateFormat), i11);
    }

    public static long getTimeSpan(Date date, Date date2, int i11) {
        return millis2TimeSpan(date2Millis(date) - date2Millis(date2), i11);
    }

    public static long getTimeSpanByNow(long j11, int i11) {
        return getTimeSpan(j11, System.currentTimeMillis(), i11);
    }

    public static long getTimeSpanByNow(String str, int i11) {
        return getTimeSpan(str, getNowString(), getDefaultFormat(), i11);
    }

    public static long getTimeSpanByNow(String str, @NonNull DateFormat dateFormat, int i11) {
        return getTimeSpan(str, getNowString(dateFormat), dateFormat, i11);
    }

    public static long getTimeSpanByNow(Date date, int i11) {
        return getTimeSpan(date, new Date(), i11);
    }

    public static String getUSWeek(long j11) {
        return getUSWeek(new Date(j11));
    }

    public static String getUSWeek(String str) {
        return getUSWeek(string2Date(str, getDefaultFormat()));
    }

    public static String getUSWeek(String str, @NonNull DateFormat dateFormat) {
        return getUSWeek(string2Date(str, dateFormat));
    }

    public static String getUSWeek(Date date) {
        return new SimpleDateFormat("EEEE", Locale.US).format(date);
    }

    public static int getValueByCalendarField(int i11) {
        return Calendar.getInstance().get(i11);
    }

    public static int getValueByCalendarField(long j11, int i11) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j11);
        return calendar.get(i11);
    }

    public static int getValueByCalendarField(String str, int i11) {
        return getValueByCalendarField(string2Date(str, getDefaultFormat()), i11);
    }

    public static int getValueByCalendarField(String str, @NonNull DateFormat dateFormat, int i11) {
        return getValueByCalendarField(string2Date(str, dateFormat), i11);
    }

    public static int getValueByCalendarField(Date date, int i11) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        return calendar.get(i11);
    }

    private static long getWeeOfToday() {
        Calendar calendar = Calendar.getInstance();
        calendar.set(11, 0);
        calendar.set(13, 0);
        calendar.set(12, 0);
        calendar.set(14, 0);
        return calendar.getTimeInMillis();
    }

    public static String getZodiac(int i11, int i12) {
        String[] strArr = ZODIAC;
        int i13 = i11 - 1;
        if (i12 < ZODIAC_FLAGS[i13]) {
            i13 = (i11 + 10) % 12;
        }
        return strArr[i13];
    }

    public static String getZodiac(long j11) {
        return getZodiac(millis2Date(j11));
    }

    public static String getZodiac(String str) {
        return getZodiac(string2Date(str, getDefaultFormat()));
    }

    public static String getZodiac(String str, @NonNull DateFormat dateFormat) {
        return getZodiac(string2Date(str, dateFormat));
    }

    public static String getZodiac(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        return getZodiac(calendar.get(2) + 1, calendar.get(5));
    }

    public static boolean isAm() {
        return Calendar.getInstance().get(9) == 0;
    }

    public static boolean isAm(long j11) {
        return getValueByCalendarField(j11, 9) == 0;
    }

    public static boolean isAm(String str) {
        return getValueByCalendarField(str, getDefaultFormat(), 9) == 0;
    }

    public static boolean isAm(String str, @NonNull DateFormat dateFormat) {
        return getValueByCalendarField(str, dateFormat, 9) == 0;
    }

    public static boolean isAm(Date date) {
        return getValueByCalendarField(date, 9) == 0;
    }

    public static boolean isLeapYear(int i11) {
        return (i11 % 4 == 0 && i11 % 100 != 0) || i11 % 400 == 0;
    }

    public static boolean isLeapYear(long j11) {
        return isLeapYear(millis2Date(j11));
    }

    public static boolean isLeapYear(String str) {
        return isLeapYear(string2Date(str, getDefaultFormat()));
    }

    public static boolean isLeapYear(String str, @NonNull DateFormat dateFormat) {
        return isLeapYear(string2Date(str, dateFormat));
    }

    public static boolean isLeapYear(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        return isLeapYear(calendar.get(1));
    }

    public static boolean isPm() {
        return !isAm();
    }

    public static boolean isPm(long j11) {
        return !isAm(j11);
    }

    public static boolean isPm(String str) {
        return !isAm(str);
    }

    public static boolean isPm(String str, @NonNull DateFormat dateFormat) {
        return !isAm(str, dateFormat);
    }

    public static boolean isPm(Date date) {
        return !isAm(date);
    }

    public static boolean isToday(long j11) {
        long weeOfToday = getWeeOfToday();
        return j11 >= weeOfToday && j11 < weeOfToday + 86400000;
    }

    public static boolean isToday(String str) {
        return isToday(string2Millis(str, getDefaultFormat()));
    }

    public static boolean isToday(String str, @NonNull DateFormat dateFormat) {
        return isToday(string2Millis(str, dateFormat));
    }

    public static boolean isToday(Date date) {
        return isToday(date.getTime());
    }

    public static Date millis2Date(long j11) {
        return new Date(j11);
    }

    static String millis2FitTimeSpan(long j11, int i11) {
        if (i11 <= 0) {
            return null;
        }
        int iMin = Math.min(i11, 5);
        String[] strArr = {"天", "小时", "分钟", "秒", "毫秒"};
        if (j11 == 0) {
            return 0 + strArr[iMin - 1];
        }
        StringBuilder sb2 = new StringBuilder();
        if (j11 < 0) {
            sb2.append("-");
            j11 = -j11;
        }
        int[] iArr = {TimeConstants.DAY, TimeConstants.HOUR, 60000, 1000, 1};
        for (int i12 = 0; i12 < iMin; i12++) {
            int i13 = iArr[i12];
            if (j11 >= i13) {
                long j12 = j11 / ((long) i13);
                j11 -= ((long) i13) * j12;
                sb2.append(j12);
                sb2.append(strArr[i12]);
            }
        }
        return sb2.toString();
    }

    public static String millis2String(long j11) {
        return millis2String(j11, getDefaultFormat());
    }

    public static String millis2String(long j11, @NonNull String str) {
        return millis2String(j11, getSafeDateFormat(str));
    }

    public static String millis2String(long j11, @NonNull DateFormat dateFormat) {
        return dateFormat.format(new Date(j11));
    }

    private static long millis2TimeSpan(long j11, int i11) {
        return j11 / ((long) i11);
    }

    public static Date string2Date(String str) {
        return string2Date(str, getDefaultFormat());
    }

    public static Date string2Date(String str, @NonNull String str2) {
        return string2Date(str, getSafeDateFormat(str2));
    }

    public static Date string2Date(String str, @NonNull DateFormat dateFormat) {
        try {
            return dateFormat.parse(str);
        } catch (ParseException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public static long string2Millis(String str) {
        return string2Millis(str, getDefaultFormat());
    }

    public static long string2Millis(String str, @NonNull String str2) {
        return string2Millis(str, getSafeDateFormat(str2));
    }

    public static long string2Millis(String str, @NonNull DateFormat dateFormat) {
        try {
            return dateFormat.parse(str).getTime();
        } catch (ParseException e11) {
            e11.printStackTrace();
            return -1L;
        }
    }

    private static long timeSpan2Millis(long j11, int i11) {
        return j11 * ((long) i11);
    }
}
