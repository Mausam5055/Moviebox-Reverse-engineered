package com.vungle.ads.internal;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.WindowManager;
import com.vungle.ads.ServiceLocator;
import com.vungle.ads.TpatError;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import com.vungle.ads.internal.util.w;
import java.util.List;
import java.util.regex.Pattern;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;

/* JADX INFO: loaded from: classes7.dex */
public final class ClickCoordinateTracker {
    private static final String TAG = "ClickCoordinateTracker";
    private final AdPayload advertisement;
    private final Context context;
    private final a currentClick;
    public static final b Companion = new b(null);
    private static final String MACRO_REQ_WIDTH = Pattern.quote("{{{req_width}}}");
    private static final String MACRO_REQ_HEIGHT = Pattern.quote("{{{req_height}}}");
    private static final String MACRO_WIDTH = Pattern.quote("{{{width}}}");
    private static final String MACRO_HEIGHT = Pattern.quote("{{{height}}}");
    private static final String MACRO_DOWN_X = Pattern.quote("{{{down_x}}}");
    private static final String MACRO_DOWN_Y = Pattern.quote("{{{down_y}}}");
    private static final String MACRO_UP_X = Pattern.quote("{{{up_x}}}");
    private static final String MACRO_UP_Y = Pattern.quote("{{{up_y}}}");

    public static final class a {
        private c downCoordinate;
        private c upCoordinate;

        public a(c downCoordinate, c upCoordinate) {
            Intrinsics.h(downCoordinate, "downCoordinate");
            Intrinsics.h(upCoordinate, "upCoordinate");
            this.downCoordinate = downCoordinate;
            this.upCoordinate = upCoordinate;
        }

        public static /* synthetic */ a copy$default(a aVar, c cVar, c cVar2, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                cVar = aVar.downCoordinate;
            }
            if ((i11 & 2) != 0) {
                cVar2 = aVar.upCoordinate;
            }
            return aVar.copy(cVar, cVar2);
        }

        public final c component1() {
            return this.downCoordinate;
        }

        public final c component2() {
            return this.upCoordinate;
        }

        public final a copy(c downCoordinate, c upCoordinate) {
            Intrinsics.h(downCoordinate, "downCoordinate");
            Intrinsics.h(upCoordinate, "upCoordinate");
            return new a(downCoordinate, upCoordinate);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return Intrinsics.c(this.downCoordinate, aVar.downCoordinate) && Intrinsics.c(this.upCoordinate, aVar.upCoordinate);
        }

        public final c getDownCoordinate() {
            return this.downCoordinate;
        }

        public final c getUpCoordinate() {
            return this.upCoordinate;
        }

        public int hashCode() {
            return (this.downCoordinate.hashCode() * 31) + this.upCoordinate.hashCode();
        }

        public final boolean ready() {
            return (this.downCoordinate.getX() == Integer.MIN_VALUE || this.downCoordinate.getY() == Integer.MIN_VALUE || this.upCoordinate.getX() == Integer.MIN_VALUE || this.upCoordinate.getY() == Integer.MIN_VALUE) ? false : true;
        }

        public final void setDownCoordinate(c cVar) {
            Intrinsics.h(cVar, "<set-?>");
            this.downCoordinate = cVar;
        }

        public final void setUpCoordinate(c cVar) {
            Intrinsics.h(cVar, "<set-?>");
            this.upCoordinate = cVar;
        }

        public String toString() {
            return "ClickCoordinate(downCoordinate=" + this.downCoordinate + ", upCoordinate=" + this.upCoordinate + ')';
        }
    }

    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public static final class c {

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        private final int f60588x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        private final int f60589y;

        public c(int i11, int i12) {
            this.f60588x = i11;
            this.f60589y = i12;
        }

        public static /* synthetic */ c copy$default(c cVar, int i11, int i12, int i13, Object obj) {
            if ((i13 & 1) != 0) {
                i11 = cVar.f60588x;
            }
            if ((i13 & 2) != 0) {
                i12 = cVar.f60589y;
            }
            return cVar.copy(i11, i12);
        }

        public final int component1() {
            return this.f60588x;
        }

        public final int component2() {
            return this.f60589y;
        }

        public final c copy(int i11, int i12) {
            return new c(i11, i12);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return this.f60588x == cVar.f60588x && this.f60589y == cVar.f60589y;
        }

        public final int getX() {
            return this.f60588x;
        }

        public final int getY() {
            return this.f60589y;
        }

        public int hashCode() {
            return (this.f60588x * 31) + this.f60589y;
        }

        public String toString() {
            return "Coordinate(x=" + this.f60588x + ", y=" + this.f60589y + ')';
        }
    }

    public static final class d {
        private final Context context;

        /* JADX INFO: renamed from: dm, reason: collision with root package name */
        private final DisplayMetrics f60590dm;

        public d(Context context) {
            Intrinsics.h(context, "context");
            this.context = context;
            DisplayMetrics displayMetrics = new DisplayMetrics();
            this.f60590dm = displayMetrics;
            Object systemService = context.getSystemService("window");
            Intrinsics.f(systemService, "null cannot be cast to non-null type android.view.WindowManager");
            ((WindowManager) systemService).getDefaultDisplay().getMetrics(displayMetrics);
        }

        public static /* synthetic */ d copy$default(d dVar, Context context, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                context = dVar.context;
            }
            return dVar.copy(context);
        }

        public final Context component1() {
            return this.context;
        }

        public final d copy(Context context) {
            Intrinsics.h(context, "context");
            return new d(context);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof d) && Intrinsics.c(this.context, ((d) obj).context);
        }

        public final Context getContext() {
            return this.context;
        }

        public final int getDeviceHeight() {
            return this.f60590dm.heightPixels;
        }

        public final int getDeviceWidth() {
            return this.f60590dm.widthPixels;
        }

        public int hashCode() {
            return this.context.hashCode();
        }

        public String toString() {
            return "DeviceScreenInfo(context=" + this.context + ')';
        }
    }

    public ClickCoordinateTracker(Context context, AdPayload advertisement) {
        Intrinsics.h(context, "context");
        Intrinsics.h(advertisement, "advertisement");
        this.context = context;
        this.advertisement = advertisement;
        this.currentClick = new a(new c(Integer.MIN_VALUE, Integer.MIN_VALUE), new c(Integer.MIN_VALUE, Integer.MIN_VALUE));
    }

    public static /* synthetic */ void getCurrentClick$vungle_ads_release$annotations() {
    }

    private final int getDeviceHeight() {
        return new d(this.context).getDeviceHeight();
    }

    private final int getDeviceWidth() {
        return new d(this.context).getDeviceWidth();
    }

    private final int getRequestedHeight() {
        int iAdHeight = this.advertisement.adHeight();
        return iAdHeight == 0 ? getDeviceHeight() : w.INSTANCE.dpToPixels(this.context, iAdHeight);
    }

    private final int getRequestedWidth() {
        int iAdWidth = this.advertisement.adWidth();
        return iAdWidth == 0 ? getDeviceWidth() : w.INSTANCE.dpToPixels(this.context, iAdWidth);
    }

    private final void sendClickCoordinates() {
        List<String> tpatUrls$default = AdPayload.getTpatUrls$default(this.advertisement, AdPayload.TPAT_CLICK_COORDINATES_URLS, null, null, 6, null);
        List list = tpatUrls$default;
        if (list == null || list.isEmpty()) {
            new TpatError(Sdk$SDKError.Reason.EMPTY_TPAT_ERROR, "Empty urls for tpat: video.clickCoordinates").setLogEntry$vungle_ads_release(this.advertisement.getLogEntry$vungle_ads_release()).logErrorNoReturnValue$vungle_ads_release();
            return;
        }
        int requestedWidth = getRequestedWidth();
        int requestedHeight = getRequestedHeight();
        int requestedWidth2 = getRequestedWidth();
        int requestedHeight2 = getRequestedHeight();
        ServiceLocator.Companion companion = ServiceLocator.Companion;
        final Context context = this.context;
        Lazy lazyA = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0<com.vungle.ads.internal.network.h>() { // from class: com.vungle.ads.internal.ClickCoordinateTracker$sendClickCoordinates$$inlined$inject$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.network.h, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final com.vungle.ads.internal.network.h invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(com.vungle.ads.internal.network.h.class);
            }
        });
        for (String str : tpatUrls$default) {
            String MACRO_REQ_WIDTH2 = MACRO_REQ_WIDTH;
            Intrinsics.g(MACRO_REQ_WIDTH2, "MACRO_REQ_WIDTH");
            String strReplace = new Regex(MACRO_REQ_WIDTH2).replace(str, String.valueOf(requestedWidth));
            String MACRO_REQ_HEIGHT2 = MACRO_REQ_HEIGHT;
            Intrinsics.g(MACRO_REQ_HEIGHT2, "MACRO_REQ_HEIGHT");
            String strReplace2 = new Regex(MACRO_REQ_HEIGHT2).replace(strReplace, String.valueOf(requestedHeight));
            String MACRO_WIDTH2 = MACRO_WIDTH;
            Intrinsics.g(MACRO_WIDTH2, "MACRO_WIDTH");
            String strReplace3 = new Regex(MACRO_WIDTH2).replace(strReplace2, String.valueOf(requestedWidth2));
            String MACRO_HEIGHT2 = MACRO_HEIGHT;
            Intrinsics.g(MACRO_HEIGHT2, "MACRO_HEIGHT");
            String strReplace4 = new Regex(MACRO_HEIGHT2).replace(strReplace3, String.valueOf(requestedHeight2));
            String MACRO_DOWN_X2 = MACRO_DOWN_X;
            Intrinsics.g(MACRO_DOWN_X2, "MACRO_DOWN_X");
            String strReplace5 = new Regex(MACRO_DOWN_X2).replace(strReplace4, String.valueOf(this.currentClick.getDownCoordinate().getX()));
            String MACRO_DOWN_Y2 = MACRO_DOWN_Y;
            Intrinsics.g(MACRO_DOWN_Y2, "MACRO_DOWN_Y");
            String strReplace6 = new Regex(MACRO_DOWN_Y2).replace(strReplace5, String.valueOf(this.currentClick.getDownCoordinate().getY()));
            String MACRO_UP_X2 = MACRO_UP_X;
            Intrinsics.g(MACRO_UP_X2, "MACRO_UP_X");
            String strReplace7 = new Regex(MACRO_UP_X2).replace(strReplace6, String.valueOf(this.currentClick.getUpCoordinate().getX()));
            String MACRO_UP_Y2 = MACRO_UP_Y;
            Intrinsics.g(MACRO_UP_Y2, "MACRO_UP_Y");
            com.vungle.ads.internal.network.h.sendTpat$default(m366sendClickCoordinates$lambda0(lazyA), new com.vungle.ads.internal.network.f.a(new Regex(MACRO_UP_Y2).replace(strReplace7, String.valueOf(this.currentClick.getUpCoordinate().getY()))).tpatKey(com.vungle.ads.internal.b.COORDINATE).build(), false, 2, null);
        }
    }

    /* JADX INFO: renamed from: sendClickCoordinates$lambda-0, reason: not valid java name */
    private static final com.vungle.ads.internal.network.h m366sendClickCoordinates$lambda0(Lazy<com.vungle.ads.internal.network.h> lazy) {
        return (com.vungle.ads.internal.network.h) lazy.getValue();
    }

    public final a getCurrentClick$vungle_ads_release() {
        return this.currentClick;
    }

    public final void trackCoordinate(MotionEvent event) {
        Intrinsics.h(event, "event");
        if (this.advertisement.isClickCoordinatesTrackingEnabled()) {
            int action = event.getAction();
            if (action == 0) {
                this.currentClick.setDownCoordinate(new c((int) event.getX(), (int) event.getY()));
            } else {
                if (action != 1) {
                    return;
                }
                this.currentClick.setUpCoordinate(new c((int) event.getX(), (int) event.getY()));
                if (this.currentClick.ready()) {
                    sendClickCoordinates();
                }
            }
        }
    }
}
