package tv;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.widget.TextView;
import com.noober.background.view.BLTextView;
import com.tn.lib.pager.PagerLayoutManager;
import com.tn.lib.view.SecondariesSeekBar;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.util.TimeUtilKt;
import com.transsion.ugcvideodetail.api.bean.UGCImmVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel;
import kotlin.jvm.internal.Intrinsics;
import qv.r;

/* JADX INFO: loaded from: classes7.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f76378a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final i f76379b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private GestureDetector f76380c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f76381d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f76382e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f76383f;

    /* JADX INFO: loaded from: classes6.dex */
    public interface a {
        r a();

        UGCImmVideoDetailViewModel b();

        PagerLayoutManager c();

        void d();

        void e(boolean z10);

        void f(long j11);

        void g();

        UGCImmVideo getData();

        String getLogTag();

        com.transsion.player.orplayer.g getOrPlayer();

        void h(boolean z10);

        int i();

        boolean isLoading();
    }

    public static final class b extends GestureDetector.SimpleOnGestureListener {
        b() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent e11) {
            Intrinsics.h(e11, "e");
            return super.onDoubleTap(e11);
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent e11) {
            Intrinsics.h(e11, "e");
            super.onLongPress(e11);
            int i11 = g.this.f76378a.i() / 3;
            int x10 = (int) e11.getX();
            if ((x10 < 0 || x10 > i11) && x10 <= i11 * 2) {
                g.this.f76378a.d();
            } else {
                g.this.f76381d = true;
                g.this.n();
            }
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent e11) {
            Intrinsics.h(e11, "e");
            g.this.l();
            return super.onSingleTapUp(e11);
        }
    }

    public static final class c implements com.transsion.baseui.widget.f.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private long f76385a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private long f76386b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f76387c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f76388d = "";

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ Context f76390f;

        c(Context context) {
            this.f76390f = context;
        }

        @Override // com.transsion.baseui.widget.f.a
        public void a() {
        }

        @Override // com.transsion.baseui.widget.f.a
        public void b(float f11, float f12) {
            if (!g.this.f76382e) {
                PagerLayoutManager pagerLayoutManagerC = g.this.f76378a.c();
                if (pagerLayoutManagerC != null) {
                    pagerLayoutManagerC.X(false);
                }
                this.f76385a = g.this.f76378a.a().f73874v.getCurrentProgress();
                g.this.f76378a.e(false);
                TextView tvUgcImmProgressDes = g.this.f76378a.a().E;
                Intrinsics.g(tvUgcImmProgressDes, "tvUgcImmProgressDes");
                jg.c.k(tvUgcImmProgressDes);
                SecondariesSeekBar seekUgcImmBar = g.this.f76378a.a().f73877y;
                Intrinsics.g(seekUgcImmBar, "seekUgcImmBar");
                jg.c.k(seekUgcImmBar);
                SecondariesSeekBar progressUgcImmBar = g.this.f76378a.a().f73874v;
                Intrinsics.g(progressUgcImmBar, "progressUgcImmBar");
                jg.c.g(progressUgcImmBar);
                this.f76387c = g.this.f76378a.a().f73874v.getWidth();
                long maxProgress = g.this.f76378a.a().f73874v.getMaxProgress();
                this.f76386b = maxProgress;
                this.f76388d = TimeUtilKt.n(maxProgress);
            }
            g.this.f76382e = true;
            long j11 = this.f76386b;
            long j12 = (long) (this.f76385a + (((f12 - f11) * j11) / this.f76387c));
            if (j12 < 0) {
                j11 = 0;
            } else if (j12 <= j11) {
                j11 = j12;
            }
            g.this.f76378a.a().E.setText(ph.c.e().e(j11 <= 0 ? "00:00" : TimeUtilKt.n(j11)).c(androidx.core.content.b.getColor(this.f76390f, R$color.white)).e("  /  " + this.f76388d).c(androidx.core.content.b.getColor(this.f76390f, R$color.white_60)).b());
            g.this.f76378a.f(j11);
        }

        @Override // com.transsion.baseui.widget.f.a
        public void c(float f11, float f12) {
        }

        @Override // com.transsion.baseui.widget.f.a
        public void d(float f11, float f12) {
        }

        @Override // com.transsion.baseui.widget.f.a
        public void e() {
            com.transsion.player.orplayer.g orPlayer;
            PagerLayoutManager pagerLayoutManagerC = g.this.f76378a.c();
            if (pagerLayoutManagerC != null) {
                pagerLayoutManagerC.X(true);
            }
            if (g.this.f76382e) {
                g.this.f76382e = false;
                g.this.f76378a.e(true);
                TextView tvUgcImmProgressDes = g.this.f76378a.a().E;
                Intrinsics.g(tvUgcImmProgressDes, "tvUgcImmProgressDes");
                jg.c.g(tvUgcImmProgressDes);
                SecondariesSeekBar seekUgcImmBar = g.this.f76378a.a().f73877y;
                Intrinsics.g(seekUgcImmBar, "seekUgcImmBar");
                jg.c.g(seekUgcImmBar);
                SecondariesSeekBar progressUgcImmBar = g.this.f76378a.a().f73874v;
                Intrinsics.g(progressUgcImmBar, "progressUgcImmBar");
                jg.c.k(progressUgcImmBar);
                long currentProgress = g.this.f76378a.a().f73874v.getCurrentProgress();
                UGCImmVideo data = g.this.f76378a.getData();
                if (data == null || !data.isDataComplete()) {
                    lg.a.C0828a.f(lg.a.f68839a, g.this.f76378a.getLogTag(), "数据还没有拉下来，不进行seek", false, 4, null);
                    return;
                }
                com.transsion.player.orplayer.g orPlayer2 = g.this.f76378a.getOrPlayer();
                if (orPlayer2 != null) {
                    orPlayer2.seekTo(currentProgress);
                }
                com.transsion.player.orplayer.g orPlayer3 = g.this.f76378a.getOrPlayer();
                if (orPlayer3 == null || orPlayer3.isPlaying() || (orPlayer = g.this.f76378a.getOrPlayer()) == null) {
                    return;
                }
                orPlayer.play();
            }
        }

        @Override // com.transsion.baseui.widget.f.a
        public void onDoubleTap(MotionEvent e11) {
            Intrinsics.h(e11, "e");
        }

        @Override // com.transsion.baseui.widget.f.a
        public void onLongPress(MotionEvent e11) {
            Intrinsics.h(e11, "e");
        }
    }

    public g(a host, i reportDelegate) {
        Intrinsics.h(host, "host");
        Intrinsics.h(reportDelegate, "reportDelegate");
        this.f76378a = host;
        this.f76379b = reportDelegate;
    }

    private final void h() {
        if (this.f76383f > 0.0f) {
            lg.a.C0828a.f(lg.a.f68839a, this.f76378a.getLogTag(), "endFastForward speed:" + this.f76383f, false, 4, null);
            com.transsion.player.orplayer.g orPlayer = this.f76378a.getOrPlayer();
            if (orPlayer != null) {
                orPlayer.setSpeed(this.f76383f);
            }
            BLTextView tvUgcImmTopSpeed = this.f76378a.a().F;
            Intrinsics.g(tvUgcImmTopSpeed, "tvUgcImmTopSpeed");
            jg.c.g(tvUgcImmTopSpeed);
            this.f76383f = 0.0f;
            this.f76378a.e(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean j(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void l() {
        if (this.f76378a.isLoading()) {
            return;
        }
        this.f76378a.e(true);
        com.transsion.player.orplayer.g orPlayer = this.f76378a.getOrPlayer();
        if (orPlayer == null || !orPlayer.isPlaying()) {
            this.f76378a.g();
            this.f76378a.h(false);
            return;
        }
        this.f76378a.h(true);
        com.transsion.player.orplayer.g orPlayer2 = this.f76378a.getOrPlayer();
        if (orPlayer2 != null) {
            orPlayer2.pause();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n() {
        com.transsion.player.orplayer.g orPlayer = this.f76378a.getOrPlayer();
        if (orPlayer == null || orPlayer.isPlaying()) {
            UGCImmVideoDetailViewModel uGCImmVideoDetailViewModelB = this.f76378a.b();
            this.f76383f = uGCImmVideoDetailViewModelB != null ? uGCImmVideoDetailViewModelB.X0() : 1.0f;
            com.transsion.player.orplayer.g orPlayer2 = this.f76378a.getOrPlayer();
            if (orPlayer2 != null) {
                orPlayer2.setSpeed(this.f76383f * 2.0f);
            }
            i iVar = this.f76379b;
            UGCImmVideo data = this.f76378a.getData();
            UGCVideo ugcVideo = data != null ? data.getUgcVideo() : null;
            UGCImmVideoDetailViewModel uGCImmVideoDetailViewModelB2 = this.f76378a.b();
            iVar.a("long_pressed", ugcVideo, (24 & 4) != 0 ? null : uGCImmVideoDetailViewModelB2 != null ? Boolean.valueOf(uGCImmVideoDetailViewModelB2.Y0()) : null, (24 & 8) != 0 ? null : null, (24 & 16) != 0 ? null : null);
            lg.a.C0828a.f(lg.a.f68839a, this.f76378a.getLogTag(), "startFastForward speed:" + (this.f76383f * 2.0f), false, 4, null);
            this.f76378a.a().F.setText((this.f76383f * 2.0f) + "x");
            BLTextView tvUgcImmTopSpeed = this.f76378a.a().F;
            Intrinsics.g(tvUgcImmTopSpeed, "tvUgcImmTopSpeed");
            jg.c.k(tvUgcImmTopSpeed);
            this.f76378a.e(false);
        }
    }

    public final void i() {
        Context context = this.f76378a.a().getRoot().getContext();
        this.f76380c = new GestureDetector(context, new b());
        new com.transsion.baseui.widget.f(context, this.f76378a.a().L).s(new c(context));
        this.f76378a.a().f73877y.setOnTouchListener(new View.OnTouchListener() { // from class: tv.f
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return g.j(view, motionEvent);
            }
        });
    }

    public final boolean k() {
        return this.f76382e;
    }

    public final boolean m(MotionEvent event) {
        Intrinsics.h(event, "event");
        int actionMasked = event.getActionMasked();
        if ((actionMasked == 1 || actionMasked == 3) && this.f76381d) {
            this.f76381d = false;
            h();
        }
        GestureDetector gestureDetector = this.f76380c;
        return gestureDetector != null && gestureDetector.onTouchEvent(event);
    }
}
