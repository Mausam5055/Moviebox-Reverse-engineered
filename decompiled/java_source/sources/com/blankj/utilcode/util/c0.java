package com.blankj.utilcode.util;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public abstract class c0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ThreadLocal f20083a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String[] f20084b = {"猴", "鸡", "狗", "猪", "鼠", "牛", "虎", "兔", "龙", "蛇", "马", "羊"};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int[] f20085c = {20, 19, 21, 21, 21, 22, 23, 23, 23, 24, 23, 22};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String[] f20086d = {"水瓶座", "双鱼座", "白羊座", "金牛座", "双子座", "巨蟹座", "狮子座", "处女座", "天秤座", "天蝎座", "射手座", "摩羯座"};

    class a extends ThreadLocal {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Map initialValue() {
            return new HashMap();
        }
    }

    public static long a(Date date) {
        return date.getTime();
    }

    public static String b(Date date, String str) {
        return d(str).format(date);
    }

    private static SimpleDateFormat c() {
        return d("yyyy-MM-dd HH:mm:ss");
    }

    public static SimpleDateFormat d(String str) {
        Map map = (Map) f20083a.get();
        SimpleDateFormat simpleDateFormat = (SimpleDateFormat) map.get(str);
        if (simpleDateFormat != null) {
            return simpleDateFormat;
        }
        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat(str);
        map.put(str, simpleDateFormat2);
        return simpleDateFormat2;
    }

    private static long e() {
        Calendar calendar = Calendar.getInstance();
        calendar.set(11, 0);
        calendar.set(13, 0);
        calendar.set(12, 0);
        calendar.set(14, 0);
        return calendar.getTimeInMillis();
    }

    public static boolean f(long j11) {
        long jE = e();
        return j11 >= jE && j11 < jE + 86400000;
    }

    public static Date g(long j11) {
        return new Date(j11);
    }

    public static String h(long j11) {
        return j(j11, c());
    }

    public static String i(long j11, String str) {
        return j(j11, d(str));
    }

    public static String j(long j11, DateFormat dateFormat) {
        return dateFormat.format(new Date(j11));
    }

    public static Date k(String str) {
        return m(str, c());
    }

    public static Date l(String str, String str2) {
        return m(str, d(str2));
    }

    public static Date m(String str, DateFormat dateFormat) {
        try {
            return dateFormat.parse(str);
        } catch (ParseException e11) {
            e11.printStackTrace();
            return null;
        }
    }
}
