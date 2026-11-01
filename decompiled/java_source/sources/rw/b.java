package rw;

import android.content.Context;
import com.transsion.usercenter.R$string;
import java.text.DateFormat;
import java.text.DateFormatSymbols;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes7.dex */
public final class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static DateFormat f74726b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f74725a = new a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f74727c = R$string.minute_ago;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f74728d = R$string.hour_ago;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f74729e = R$string.just_now;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f74730f = R$string.day_ago;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final DateFormat c(Context context) {
            if (b.f74726b == null) {
                DateFormatSymbols dateFormatSymbols = new DateFormatSymbols();
                dateFormatSymbols.setShortMonths(new String[]{context.getString(R$string.month_jan), context.getString(R$string.month_feb), context.getString(R$string.month_mar), context.getString(R$string.month_apr), context.getString(R$string.month_may), context.getString(R$string.month_june), context.getString(R$string.month_july), context.getString(R$string.month_aug), context.getString(R$string.month_sept), context.getString(R$string.month_oct), context.getString(R$string.month_nov), context.getString(R$string.month_dec)});
                b.f74726b = new SimpleDateFormat("dd MMM", dateFormatSymbols);
            }
            return b.f74726b;
        }

        private final String d(Long l11) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            Intrinsics.e(l11);
            return simpleDateFormat.format(new Date(l11.longValue()));
        }

        private final String e(Context context, long j11, long j12) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            try {
                long time = simpleDateFormat.parse(d(Long.valueOf(j12))).getTime() - simpleDateFormat.parse(d(Long.valueOf(j11))).getTime();
                long j13 = (time % 86400000) / 3600000;
                long j14 = ((time % 86400000) % 3600000) / 60000;
                if (time / 86400000 > 0) {
                    DateFormat dateFormatC = c(context);
                    if (dateFormatC != null) {
                        return dateFormatC.format(new Date(j11));
                    }
                    return null;
                }
                if (j13 > 0) {
                    String string = context.getString(b.f74728d);
                    Intrinsics.g(string, "getString(...)");
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(j13);
                    return StringsKt.Q(string, "{$target}", sb2.toString(), false, 4, null);
                }
                if (j14 <= 0) {
                    return context.getString(b.f74729e);
                }
                String string2 = context.getString(b.f74727c);
                Intrinsics.g(string2, "getString(...)");
                StringBuilder sb3 = new StringBuilder();
                sb3.append(j14);
                return StringsKt.Q(string2, "{$target}", sb3.toString(), false, 4, null);
            } catch (Exception e11) {
                e11.printStackTrace();
                return "";
            }
        }

        public final String a(Context context, String timestamp) {
            Intrinsics.h(context, "context");
            Intrinsics.h(timestamp, "timestamp");
            try {
                long j11 = Long.parseLong(timestamp);
                Calendar calendar = Calendar.getInstance();
                long timeInMillis = calendar.getTimeInMillis();
                int i11 = calendar.get(7);
                int i12 = calendar.get(4);
                int i13 = calendar.get(2) + 1;
                int i14 = calendar.get(1);
                Calendar calendar2 = Calendar.getInstance();
                calendar2.setTimeInMillis(j11);
                long timeInMillis2 = calendar2.getTimeInMillis();
                int i15 = calendar2.get(7);
                int i16 = calendar2.get(4);
                int i17 = calendar2.get(2) + 1;
                int i18 = calendar2.get(1);
                if (Math.abs(i14 - i18) > 0) {
                    return new SimpleDateFormat("MM-dd-yyyy").format(Long.valueOf(timeInMillis2));
                }
                if (i14 != i18) {
                    return "";
                }
                if (Math.abs(i13 - i17) > 0) {
                    return e(context, j11, timeInMillis);
                }
                if (i13 != i17) {
                    return "";
                }
                if (Math.abs(i12 - i16) > 0) {
                    return e(context, j11, timeInMillis);
                }
                if (i12 != i16) {
                    return "";
                }
                int i19 = i11 - i15;
                if (Math.abs(i19) <= 1 && Math.abs(i19) == 1) {
                    return e(context, j11, timeInMillis);
                }
                return e(context, j11, timeInMillis);
            } catch (Exception e11) {
                e11.printStackTrace();
                return "";
            }
        }

        public final String b(long j11) {
            if (j11 == 0) {
                return "";
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(jCurrentTimeMillis);
            int i11 = calendar.get(1);
            Calendar calendar2 = Calendar.getInstance();
            calendar2.setTimeInMillis(j11);
            boolean z10 = calendar2.get(1) == i11;
            boolean z11 = calendar2.get(6) == Calendar.getInstance().get(6);
            if (z10 && z11) {
                String str = new SimpleDateFormat("HH:mm", Locale.getDefault()).format(new Date(j11));
                Intrinsics.g(str, "format(...)");
                return str;
            }
            if (!z10 || z11) {
                String str2 = new SimpleDateFormat("dd/MM/yyyy", Locale.getDefault()).format(new Date(j11));
                Intrinsics.g(str2, "format(...)");
                return str2;
            }
            String str3 = new SimpleDateFormat("dd/MM", Locale.getDefault()).format(new Date(j11));
            Intrinsics.g(str3, "format(...)");
            return str3;
        }
    }
}
