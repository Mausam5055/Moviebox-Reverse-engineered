package com.transsion.postdetail.test;

import android.os.Bundle;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import ao.e;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.moviedetailapi.bean.GifBean;
import com.transsion.moviedetailapi.bean.Image;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.MediaType;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.player.config.RenderType;
import com.transsion.player.orplayer.PlayError;
import com.transsion.player.orplayer.f;
import com.transsion.player.orplayer.g;
import com.transsion.player.p007enum.ScaleMode;
import com.transsion.player.ui.ORPlayerView;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$layout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import ig.i;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import mo.c;
import mo.d;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\u0003J\u0019\u0010\n\u001a\u00020\u00042\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0014¢\u0006\u0004\b\n\u0010\u000bR\u001c\u0010\u0010\u001a\n \r*\u0004\u0018\u00010\f0\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0012\u001a\u00020\f8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0011\u0010\u000fR\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001c\u001a\u00020\f8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u001b\u0010\u000fR\u0018\u0010 \u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0018\u0010$\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#¨\u0006%"}, d2 = {"Lcom/transsion/postdetail/test/TestActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "<init>", "()V", "", "V", "initPlayer", "W", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "", "kotlin.jvm.PlatformType", "a", "Ljava/lang/String;", "TAG", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "json", "Landroidx/recyclerview/widget/RecyclerView;", "c", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "Lcom/transsion/postdetail/test/a;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsion/postdetail/test/a;", "mAdapter", "e", "videoUrl", "Lcom/transsion/player/orplayer/g;", "f", "Lcom/transsion/player/orplayer/g;", "mPlayer", "Lqn/a;", "g", "Lqn/a;", "mItemChange", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TestActivity extends AppCompatActivity {

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private RecyclerView recyclerView;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private com.transsion.postdetail.test.a mAdapter;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private g mPlayer;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private qn.a mItemChange;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final String TAG = TestActivity.class.getSimpleName();

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final String json = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final String videoUrl = "https://test-acdn.aoneroom.com/media/video/2022/08/11/5970c1ffed2920c3b2d80da029fe3944-sd.mp4";

    public static final class a implements f {
        a() {
        }

        @Override // com.transsion.player.orplayer.f
        public void canNonSubscriberPlay(boolean z10, int i11, int i12, d dVar) {
            f.a.a(this, z10, i11, i12, dVar);
        }

        @Override // com.transsion.player.orplayer.f
        public void initPlayer() {
            f.a.b(this);
        }

        @Override // com.transsion.player.orplayer.f
        public void onAliyunDecodeErrorChangeSoftwareDecoder(e eVar) {
            f.a.c(this, eVar);
        }

        @Override // com.transsion.player.orplayer.f
        public void onBufferedPosition(long j11, e eVar) {
            f.a.d(this, j11, eVar);
        }

        @Override // com.transsion.player.orplayer.f
        public void onCompletion(e eVar) {
            f.a.e(this, eVar);
            qn.a aVar = TestActivity.this.mItemChange;
            if (aVar != null) {
                aVar.q();
            }
        }

        @Override // com.transsion.player.orplayer.f
        public void onFocusChange(boolean z10) {
            f.a.g(this, z10);
        }

        @Override // com.transsion.player.orplayer.f
        public void onIsPlayingChanged(boolean z10) {
            f.a.h(this, z10);
        }

        @Override // com.transsion.player.orplayer.f
        public void onLoadingBegin(e eVar) {
            f.a.i(this, eVar);
        }

        @Override // com.transsion.player.orplayer.f
        public void onLoadingEnd(e eVar) {
            f.a.k(this, eVar);
        }

        @Override // com.transsion.player.orplayer.f
        public void onLoadingProgress(int i11, float f11, e eVar) {
            f.a.m(this, i11, f11, eVar);
            lg.a.C0828a c0828a = lg.a.f68839a;
            String str = TestActivity.this.TAG;
            Intrinsics.g(str, "access$getTAG$p(...)");
            lg.a.C0828a.f(c0828a, str, "percent=" + i11, false, 4, null);
        }

        @Override // com.transsion.player.orplayer.f
        public void onLoopingStart() {
            f.a.o(this);
        }

        @Override // com.transsion.player.orplayer.f
        public void onMediaItemTransition(String str) {
            f.a.p(this, str);
        }

        @Override // com.transsion.player.orplayer.f
        public void onPlayError(PlayError errorInfo, e eVar) {
            Intrinsics.h(errorInfo, "errorInfo");
            f.a.q(this, errorInfo, eVar);
        }

        @Override // com.transsion.player.orplayer.f
        public void onPlayerRelease(e eVar) {
            f.a.t(this, eVar);
        }

        @Override // com.transsion.player.orplayer.f
        public void onPlayerReset() {
            f.a.v(this);
        }

        @Override // com.transsion.player.orplayer.f
        public void onPrepare(e eVar) {
            f.a.w(this, eVar);
        }

        @Override // com.transsion.player.orplayer.f
        public void onProgress(long j11, e eVar) {
            f.a.y(this, j11, eVar);
            lg.a.C0828a c0828a = lg.a.f68839a;
            String str = TestActivity.this.TAG;
            Intrinsics.g(str, "access$getTAG$p(...)");
            lg.a.C0828a.f(c0828a, str, "process=" + j11, false, 4, null);
        }

        @Override // com.transsion.player.orplayer.f
        public void onRenderFirstFrame() {
            lg.a.C0828a c0828a = lg.a.f68839a;
            String str = TestActivity.this.TAG;
            Intrinsics.g(str, "access$getTAG$p(...)");
            lg.a.C0828a.f(c0828a, str, "onRenderFirstFrame", false, 4, null);
            qn.a aVar = TestActivity.this.mItemChange;
            if (aVar != null) {
                aVar.p();
            }
        }

        @Override // com.transsion.player.orplayer.f
        public void onSetDataSource() {
            f.a.B(this);
        }

        @Override // com.transsion.player.orplayer.f
        public void onTracksAudioBitrateChange(int i11) {
            f.a.C(this, i11);
        }

        @Override // com.transsion.player.orplayer.f
        public void onTracksChange(c cVar) {
            f.a.D(this, cVar);
        }

        @Override // com.transsion.player.orplayer.f
        public void onTracksVideoBitrateChange(int i11) {
            f.a.E(this, i11);
        }

        @Override // com.transsion.player.orplayer.f
        public void onVideoPause(e eVar) {
            f.a.F(this, eVar);
        }

        @Override // com.transsion.player.orplayer.f
        public void onVideoSizeChanged(int i11, int i12) {
            f.a.H(this, i11, i12);
        }

        @Override // com.transsion.player.orplayer.f
        public void onVideoStart(e eVar) {
            f.a.I(this, eVar);
            lg.a.C0828a c0828a = lg.a.f68839a;
            String str = TestActivity.this.TAG;
            Intrinsics.g(str, "access$getTAG$p(...)");
            lg.a.C0828a.f(c0828a, str, "onVideoStart", false, 4, null);
        }

        @Override // com.transsion.player.orplayer.f
        public void setOnSeekCompleteListener() {
            f.a.K(this);
        }
    }

    public static final class b extends RecyclerView.r {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f49313a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f49314b;

        b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.r
        public void onScrollStateChanged(RecyclerView recyclerView, int i11) {
            Intrinsics.h(recyclerView, "recyclerView");
        }

        @Override // androidx.recyclerview.widget.RecyclerView.r
        public void onScrolled(RecyclerView recyclerView, int i11, int i12) {
            com.transsion.postdetail.test.a aVar;
            List<Object> data;
            List<Object> data2;
            Intrinsics.h(recyclerView, "recyclerView");
            RecyclerView.m layoutManager = recyclerView.getLayoutManager();
            if (!(layoutManager instanceof LinearLayoutManager)) {
                throw new RuntimeException("Unsupported layoutManager.");
            }
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
            this.f49313a = linearLayoutManager.findLastCompletelyVisibleItemPosition();
            this.f49314b = linearLayoutManager.findFirstCompletelyVisibleItemPosition();
            int iFindFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition();
            int iFindLastVisibleItemPosition = linearLayoutManager.findLastVisibleItemPosition();
            qn.a aVar2 = TestActivity.this.mItemChange;
            int iB = aVar2 != null ? aVar2.b() : 0;
            boolean z10 = iB < iFindFirstVisibleItemPosition || iB > iFindLastVisibleItemPosition;
            if (linearLayoutManager.getChildCount() <= 0 || (aVar = TestActivity.this.mAdapter) == null || (data = aVar.getData()) == null || !(!data.isEmpty()) || !z10) {
                return;
            }
            View childAt = linearLayoutManager.getChildAt(i12 < 0 ? linearLayoutManager.getChildCount() - 1 : 0);
            if (childAt != null) {
                int position = linearLayoutManager.getPosition(childAt);
                com.transsion.postdetail.test.a aVar3 = TestActivity.this.mAdapter;
                PostSubjectItem postSubjectItem = (aVar3 == null || (data2 = aVar3.getData()) == null) ? null : (PostSubjectItem) data2.get(position);
                qn.a aVar4 = TestActivity.this.mItemChange;
                if (aVar4 != null) {
                    aVar4.s(postSubjectItem, childAt, position);
                }
            }
        }
    }

    private final void V() {
        ArrayList arrayList = new ArrayList();
        for (int i11 = 0; i11 < 21; i11++) {
            ArrayList arrayList2 = new ArrayList();
            Image image = new Image(200, 2000, "https://cdn.shalltry.com/tcmservice/tcmservice/111630622592760357.jpg", 200, null, null, new GifBean("https://test-acdn.aoneroom.com/image/2022/08/16/61e43091d911c7e773efd9189332fadb.webp", "https://test-acdn.aoneroom.com/media/video/2022/08/11/5970c1ffed2920c3b2d80da029fe3944-sd.mp4"), null, null, 0.0f, 0.0f, 0, 0, 0, 16256, null);
            int i12 = i11 % 9;
            if (i12 >= 0) {
                while (true) {
                    arrayList2.add(image);
                    int i13 = i13 != i12 ? i13 + 1 : 0;
                }
            }
            arrayList.add(new PostSubjectItem(null, null, null, null, null, null, new Media(null, null, null, arrayList2, MediaType.IMAGE.getValue(), null, null), null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, null, false, null, false, null, false, false, false, false, null, -524288, 1, null));
        }
        this.mAdapter = new com.transsion.postdetail.test.a(arrayList);
        RecyclerView recyclerView = (RecyclerView) findViewById(R$id.recycler_view);
        if (recyclerView != null) {
            recyclerView.setLayoutManager(new LinearLayoutManager(this));
            recyclerView.addItemDecoration(new i(200, 0, 2, null));
            recyclerView.setAdapter(this.mAdapter);
        } else {
            recyclerView = null;
        }
        this.recyclerView = recyclerView;
    }

    private final void W() {
        RecyclerView recyclerView = this.recyclerView;
        if (recyclerView != null) {
            recyclerView.addOnScrollListener(new b());
        }
    }

    private final void initPlayer() {
        ORPlayerView oRPlayerView = new ORPlayerView(this, RenderType.TEXTURE_VIEW);
        g gVarA = new g.a(this).a();
        gVarA.setTextureView(oRPlayerView.getTextureView());
        gVarA.setScaleMode(ScaleMode.SCALE_ASPECT_FILL);
        this.mItemChange = new qn.a(gVarA, oRPlayerView);
        gVarA.setPlayerListener(new a());
        this.mPlayer = gVarA;
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R$layout.activity_test);
        V();
        initPlayer();
        W();
    }
}
