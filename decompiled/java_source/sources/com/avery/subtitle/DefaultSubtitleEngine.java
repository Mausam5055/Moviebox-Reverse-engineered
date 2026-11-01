package com.avery.subtitle;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.TimeUnit;
import k5.d;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes2.dex */
public final class DefaultSubtitleEngine implements com.avery.subtitle.b {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final a f19857o = new a(null);

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final String f19858p = DefaultSubtitleEngine.class.getSimpleName();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final long f19859q = TimeUnit.MINUTES.toMillis(2);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private HandlerThread f19860a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Handler f19861b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f19862c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private i5.a f19864e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.avery.subtitle.b.InterfaceC0182b f19865f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private com.avery.subtitle.b.a f19866g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f19867h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f19868i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f19869j;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f19873n;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map f19863d = new HashMap();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private n0 f19870k = o0.a(y0.c());

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private n0 f19871l = o0.a(y0.b());

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final Lazy f19872m = LazyKt.b(new Function0<l5.a>() { // from class: com.avery.subtitle.DefaultSubtitleEngine$subtitleCacheManager$2
        @Override // kotlin.jvm.functions.Function0
        public final l5.a invoke() {
            return new l5.a();
        }
    });

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public static final class b implements SubtitleLoader.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f19875b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f19876c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f19877d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ boolean f19878e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ i5.b f19879f;

        b(String str, String str2, String str3, boolean z10, i5.b bVar) {
            this.f19875b = str;
            this.f19876c = str2;
            this.f19877d = str3;
            this.f19878e = z10;
            this.f19879f = bVar;
        }

        @Override // com.avery.subtitle.SubtitleLoader.a
        public void a(Exception exc) {
            DefaultSubtitleEngine.this.i().k(this.f19875b, null);
            String str = DefaultSubtitleEngine.f19858p;
            Intrinsics.e(exc);
            Log.e(str, "onError: " + exc.getMessage());
            i5.b bVar = this.f19879f;
            if (bVar != null) {
                bVar.a(false);
            }
        }

        @Override // com.avery.subtitle.SubtitleLoader.a
        public void b(d dVar) {
            l5.a aVarI = DefaultSubtitleEngine.this.i();
            String str = this.f19875b;
            Intrinsics.e(dVar);
            aVarI.k(str, dVar);
            DefaultSubtitleEngine.this.i().i(this.f19875b);
            DefaultSubtitleEngine.this.j(this.f19876c, this.f19877d, this.f19878e, this.f19879f, dVar);
        }
    }

    private final void e() {
        if (this.f19863d.isEmpty()) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.f19873n < 2000) {
            return;
        }
        this.f19873n = jCurrentTimeMillis;
        this.f19863d.put(this.f19867h, Long.valueOf(jCurrentTimeMillis));
        Iterator it = this.f19863d.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            String str = (String) entry.getKey();
            long jLongValue = ((Number) entry.getValue()).longValue();
            if (!TextUtils.equals(str, this.f19867h) && jCurrentTimeMillis - jLongValue > f19859q) {
                Log.v(f19858p, "-----------------------timeout remove~ md5 = " + str + ", setTime = " + jLongValue + ", cur = " + jCurrentTimeMillis);
                it.remove();
                l5.a aVarI = i();
                Intrinsics.e(str);
                aVarI.j(str);
            }
        }
    }

    private final void f() {
        HandlerThread handlerThread = new HandlerThread("SubtitleFindThread");
        this.f19860a = handlerThread;
        Intrinsics.e(handlerThread);
        handlerThread.start();
        HandlerThread handlerThread2 = this.f19860a;
        Intrinsics.e(handlerThread2);
        this.f19861b = new Handler(handlerThread2.getLooper(), new Handler.Callback() { // from class: com.avery.subtitle.a
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                return DefaultSubtitleEngine.g(this.f19883a, message);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:31:0x0065  */
    public static final boolean g(DefaultSubtitleEngine this$0, Message msg) {
        long j11;
        i5.a aVar;
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(msg, "msg");
        if (this$0.f19869j) {
            return true;
        }
        try {
            i5.a aVar2 = this$0.f19864e;
            Float speed = aVar2 != null ? aVar2.getSpeed() : null;
            float fFloatValue = speed == null ? 1.0f : speed.floatValue();
            boolean z10 = msg.what == 2185;
            i5.a aVar3 = this$0.f19864e;
            long currentPosition = (aVar3 != null ? aVar3.getCurrentPosition() : 0L) + this$0.f19868i;
            if (z10 || ((aVar = this$0.f19864e) != null && aVar.isPlaying())) {
                l5.a aVarI = this$0.i();
                String str = this$0.f19867h;
                Intrinsics.e(str);
                k5.b bVarA = c.a(currentPosition, aVarI.d(str));
                this$0.m(bVarA);
                if (bVarA != null) {
                    j11 = ((long) bVarA.f66652c.f66654a) - currentPosition;
                } else {
                    j11 = 1000;
                }
            } else {
                j11 = 1000;
            }
            this$0.e();
            long j12 = (long) (j11 / fFloatValue);
            Handler handler = this$0.f19861b;
            if (handler != null) {
                Intrinsics.e(handler);
                handler.removeMessages(2184);
                Handler handler2 = this$0.f19861b;
                Intrinsics.e(handler2);
                handler2.sendEmptyMessageDelayed(2184, j12);
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        return true;
    }

    private final void h() {
        if (this.f19860a != null) {
            return;
        }
        f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final l5.a i() {
        return (l5.a) this.f19872m.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void j(String str, String str2, boolean z10, i5.b bVar, d dVar) {
        if (dVar == null) {
            if (bVar != null) {
                bVar.a(false);
            }
            Log.e(f19858p, "onSuccess: timedTextObject is null.");
            return;
        }
        TreeMap treeMap = dVar.f66663i;
        if (treeMap == null) {
            if (bVar != null) {
                bVar.a(false);
            }
            Log.e(f19858p, "onSuccess: captions is null.");
            return;
        }
        String md5 = l5.b.a(str);
        String str3 = dVar.f66664j;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onSuccess: md5 = ");
        sb2.append(md5);
        sb2.append(".,path = ");
        sb2.append(str);
        sb2.append(" warnings = ");
        sb2.append(str3);
        ArrayList arrayList = new ArrayList(treeMap.values());
        l5.a aVarI = i();
        Intrinsics.g(md5, "md5");
        aVarI.f(md5, arrayList);
        if (!this.f19862c) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("add timeout map : md5 = ");
            sb3.append(md5);
            sb3.append("， path = ");
            sb3.append(str);
            this.f19863d.put(md5, Long.valueOf(System.currentTimeMillis()));
        }
        if (!this.f19862c || TextUtils.equals(md5, this.f19867h)) {
            l(z10);
        }
        if (bVar != null) {
            bVar.a(true);
        }
    }

    private final void k(String str, final String str2, final String str3, final boolean z10, final i5.b bVar) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("loadSubtitle: path = ");
        sb2.append(str2);
        if (!i().h(str)) {
            i().a(str);
            SubtitleLoader.f19880a.h(str2, str3, new b(str, str2, str3, z10, bVar));
        } else {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("loadSubtitle, 当前有加载，无需处理: path = ");
            sb3.append(str2);
            i().b(new Function2<String, d, Unit>() { // from class: com.avery.subtitle.DefaultSubtitleEngine$loadSubtitle$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((String) obj, (d) obj2);
                    return Unit.f67061a;
                }

                public final void invoke(String str4, d dVar) {
                    String unused = DefaultSubtitleEngine.f19858p;
                    String str5 = str2;
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("其他的加载成功: path = ");
                    sb4.append(str5);
                    this.j(str2, str3, z10, bVar, dVar);
                }
            });
        }
    }

    private final void l(boolean z10) {
        com.avery.subtitle.b.InterfaceC0182b interfaceC0182b;
        if (i().g() || this.f19869j || (interfaceC0182b = this.f19865f) == null) {
            return;
        }
        if (z10) {
            Intrinsics.e(interfaceC0182b);
            interfaceC0182b.onRefreshSubtitle();
        } else {
            Intrinsics.e(interfaceC0182b);
            interfaceC0182b.onSubtitlePrepared();
        }
    }

    private final void m(k5.b bVar) {
        com.avery.subtitle.b.a aVar = this.f19866g;
        if (aVar != null) {
            k.d(this.f19870k, null, null, new DefaultSubtitleEngine$notifyRefreshUI$1$1(aVar, bVar, null), 3, null);
        }
    }

    private final void n() {
        HandlerThread handlerThread = this.f19860a;
        if (handlerThread != null) {
            Intrinsics.e(handlerThread);
            handlerThread.quit();
            this.f19860a = null;
        }
        Handler handler = this.f19861b;
        if (handler != null) {
            Intrinsics.e(handler);
            handler.removeCallbacksAndMessages(null);
            this.f19861b = null;
        }
    }

    @Override // com.avery.subtitle.b
    public void destroy() {
        reset();
        n();
        this.f19869j = false;
    }

    @Override // com.avery.subtitle.b
    public void initSubtitle(i5.a playerControl, boolean z10) {
        Intrinsics.h(playerControl, "playerControl");
        this.f19864e = playerControl;
        this.f19862c = z10;
    }

    @Override // com.avery.subtitle.b
    public void pause() {
        this.f19869j = true;
        Handler handler = this.f19861b;
        if (handler != null) {
            Intrinsics.e(handler);
            handler.removeMessages(2184);
        }
    }

    @Override // com.avery.subtitle.b
    public void refreshImmediately() {
        if (i().g()) {
            return;
        }
        this.f19869j = false;
        Handler handler = this.f19861b;
        if (handler != null) {
            Intrinsics.e(handler);
            handler.removeMessages(2184);
            Handler handler2 = this.f19861b;
            Intrinsics.e(handler2);
            handler2.sendEmptyMessage(2185);
        }
    }

    @Override // com.avery.subtitle.b
    public void reset() {
        this.f19869j = false;
        n();
        i().c();
    }

    @Override // com.avery.subtitle.b
    public void resume() {
        start();
    }

    @Override // com.avery.subtitle.b
    public void selectSubtitle(String path, String unicode, i5.b bVar) {
        Intrinsics.h(path, "path");
        Intrinsics.h(unicode, "unicode");
        if (path.length() == 0) {
            if (bVar != null) {
                bVar.a(false);
                return;
            }
            return;
        }
        String md5 = l5.b.a(path);
        if (TextUtils.equals(md5, this.f19867h)) {
            if (bVar != null) {
                bVar.a(true);
                return;
            }
            return;
        }
        this.f19867h = md5;
        l5.a aVarI = i();
        Intrinsics.g(md5, "md5");
        if (!aVarI.e(md5)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("selectSubtitle: load md5 = ");
            sb2.append(md5);
            sb2.append(", path = ");
            sb2.append(path);
            k(md5, path, unicode, true, bVar);
            return;
        }
        this.f19863d.put(this.f19867h, Long.valueOf(System.currentTimeMillis()));
        StringBuilder sb3 = new StringBuilder();
        sb3.append("selectSubtitle: immediately, md5 = ");
        sb3.append(md5);
        sb3.append(", path = ");
        sb3.append(path);
        l(true);
        if (bVar != null) {
            bVar.a(true);
        }
    }

    @Override // com.avery.subtitle.b
    public void setDefaultSubtitle(String path) {
        Intrinsics.h(path, "path");
        String strA = l5.b.a(path);
        if (TextUtils.equals(strA, this.f19867h)) {
            return;
        }
        this.f19867h = strA;
    }

    @Override // com.avery.subtitle.b
    public void setOnSubtitleChangeListener(com.avery.subtitle.b.a listener) {
        Intrinsics.h(listener, "listener");
        this.f19866g = listener;
    }

    @Override // com.avery.subtitle.b
    public void setOnSubtitlePreparedListener(com.avery.subtitle.b.InterfaceC0182b listener) {
        Intrinsics.h(listener, "listener");
        this.f19865f = listener;
    }

    @Override // com.avery.subtitle.b
    public void setSubtitlePath(String path, String unicode) {
        Intrinsics.h(path, "path");
        Intrinsics.h(unicode, "unicode");
        h();
        if (TextUtils.isEmpty(path)) {
            Log.w(f19858p, "loadSubtitleFromRemote: path is null.");
            return;
        }
        String md5 = l5.b.a(path);
        if (!TextUtils.isEmpty(md5)) {
            l5.a aVarI = i();
            Intrinsics.g(md5, "md5");
            if (aVarI.e(md5)) {
                return;
            }
        }
        if (this.f19862c || TextUtils.isEmpty(this.f19867h) || TextUtils.equals(this.f19867h, md5)) {
            Intrinsics.g(md5, "md5");
            k(md5, path, unicode, false, null);
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("setSubtitlePath: skip~ md5 = ");
        sb2.append(md5);
        sb2.append(", path = ");
        sb2.append(path);
    }

    @Override // com.avery.subtitle.b
    public void start() {
        if (i().g()) {
            return;
        }
        if (this.f19864e == null) {
            Log.w(f19858p, "PlayerControl is not bind, You must bind PlayerControl to " + com.avery.subtitle.b.class.getSimpleName() + " before start() method be called, you can do this by call bindPlayerControl(PlayerControl playerControl) method.");
            return;
        }
        this.f19869j = false;
        Handler handler = this.f19861b;
        if (handler != null) {
            Intrinsics.e(handler);
            handler.removeMessages(2184);
            Handler handler2 = this.f19861b;
            Intrinsics.e(handler2);
            handler2.sendEmptyMessageDelayed(2184, 1000L);
        }
    }

    @Override // com.avery.subtitle.b
    public void stop() {
        this.f19869j = true;
        Handler handler = this.f19861b;
        if (handler != null) {
            Intrinsics.e(handler);
            handler.removeMessages(2184);
        }
    }

    @Override // com.avery.subtitle.b
    public void subtitleDelay(long j11) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("subtitleDelay = ");
        sb2.append(j11);
        this.f19868i = j11;
        l(true);
    }
}
