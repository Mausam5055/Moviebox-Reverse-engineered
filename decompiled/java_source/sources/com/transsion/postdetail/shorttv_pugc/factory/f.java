package com.transsion.postdetail.shorttv_pugc.factory;

import android.os.Build;
import android.view.ViewGroup;
import androidx.fragment.app.FragmentActivity;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.postdetail.util.UGCShortTVFloatManager;
import com.transsion.shorttv_pugc.ShorttvModel;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoBelongToCollection;
import com.transsion.videofloat.bean.FloatActionType;
import com.transsion.videofloat.bean.FloatPlayType;
import com.transsion.videofloat.manager.a0;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class f implements st.e {

    public static final class a implements sx.a {
        a() {
        }

        @Override // sx.a
        public boolean a(px.a aVar) {
            return UGCShortTVFloatManager.f50153b.m(aVar);
        }

        @Override // sx.a
        public void b(px.a aVar) {
            sx.a.C0918a.a(this, aVar);
            UGCShortTVFloatManager.f50153b.k(aVar);
        }

        @Override // sx.a
        public void c(px.a aVar) {
            UGCShortTVFloatManager uGCShortTVFloatManager = UGCShortTVFloatManager.f50153b;
            uGCShortTVFloatManager.j();
            uGCShortTVFloatManager.n(aVar);
        }
    }

    private final px.a j(ot.d dVar) {
        ShorttvModel.UGCVideoCollection belongToCollection;
        ShorttvModel.UGCVideoCollection belongToCollection2;
        ShorttvModel.UGCVideoCollection belongToCollection3;
        ShorttvModel.UGCVideoCollection belongToCollection4;
        px.a aVar = new px.a(dVar.g(), dVar.c(), null, FloatPlayType.SHORT_TV, "", -1, dVar.a(), "", dVar.e());
        aVar.J(Integer.valueOf(SubjectType.SHORT_TV.getValue()));
        aVar.A(dVar.b());
        aVar.B(dVar.d());
        ShorttvModel.UGCVideo uGCVideoH = dVar.h();
        String collectionId = (uGCVideoH == null || (belongToCollection4 = uGCVideoH.getBelongToCollection()) == null) ? null : belongToCollection4.getCollectionId();
        ShorttvModel.UGCVideo uGCVideoH2 = dVar.h();
        String collectionName = (uGCVideoH2 == null || (belongToCollection3 = uGCVideoH2.getBelongToCollection()) == null) ? null : belongToCollection3.getCollectionName();
        ShorttvModel.UGCVideo uGCVideoH3 = dVar.h();
        Integer videoNum = (uGCVideoH3 == null || (belongToCollection2 = uGCVideoH3.getBelongToCollection()) == null) ? null : belongToCollection2.getVideoNum();
        ShorttvModel.UGCVideo uGCVideoH4 = dVar.h();
        UGCVideoBelongToCollection uGCVideoBelongToCollection = new UGCVideoBelongToCollection(collectionId, collectionName, videoNum, (uGCVideoH4 == null || (belongToCollection = uGCVideoH4.getBelongToCollection()) == null) ? null : belongToCollection.getPosition(), null, 16, null);
        ShorttvModel.UGCVideo uGCVideoH5 = dVar.h();
        String ugcVideoId = uGCVideoH5 != null ? uGCVideoH5.getUgcVideoId() : null;
        ShorttvModel.UGCVideo uGCVideoH6 = dVar.h();
        String title = uGCVideoH6 != null ? uGCVideoH6.getTitle() : null;
        ShorttvModel.UGCVideo uGCVideoH7 = dVar.h();
        String description = uGCVideoH7 != null ? uGCVideoH7.getDescription() : null;
        ShorttvModel.UGCVideo uGCVideoH8 = dVar.h();
        String corner = uGCVideoH8 != null ? uGCVideoH8.getCorner() : null;
        ShorttvModel.UGCVideo uGCVideoH9 = dVar.h();
        Long duration = uGCVideoH9 != null ? uGCVideoH9.getDuration() : null;
        ShorttvModel.UGCVideo uGCVideoH10 = dVar.h();
        String watchNum = uGCVideoH10 != null ? uGCVideoH10.getWatchNum() : null;
        ShorttvModel.UGCVideo uGCVideoH11 = dVar.h();
        String releaseDate = uGCVideoH11 != null ? uGCVideoH11.getReleaseDate() : null;
        ShorttvModel.UGCVideo uGCVideoH12 = dVar.h();
        Long publishTime = uGCVideoH12 != null ? uGCVideoH12.getPublishTime() : null;
        ShorttvModel.UGCVideo uGCVideoH13 = dVar.h();
        String category = uGCVideoH13 != null ? uGCVideoH13.getCategory() : null;
        ShorttvModel.UGCVideo uGCVideoH14 = dVar.h();
        String ops = uGCVideoH14 != null ? uGCVideoH14.getOps() : null;
        ShorttvModel.UGCVideo uGCVideoH15 = dVar.h();
        String subjectId = uGCVideoH15 != null ? uGCVideoH15.getSubjectId() : null;
        ShorttvModel.UGCVideo uGCVideoH16 = dVar.h();
        List<String> country = uGCVideoH16 != null ? uGCVideoH16.getCountry() : null;
        ShorttvModel.UGCVideo uGCVideoH17 = dVar.h();
        aVar.L(new UGCVideo(ugcVideoId, title, description, null, null, null, corner, duration, watchNum, releaseDate, publishTime, category, null, null, uGCVideoBelongToCollection, ops, subjectId, country, null, null, null, null, null, uGCVideoH17 != null ? uGCVideoH17.getRestrictKid() : 0, false, null, null, null, null, 528232504, null));
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit k(FragmentActivity fragmentActivity, boolean z10) {
        if (z10) {
            fragmentActivity.finish();
        }
        return Unit.f67061a;
    }

    @Override // st.e
    public void a(FragmentActivity activity, boolean z10, boolean z11, ViewGroup viewGroup) {
        Intrinsics.h(activity, "activity");
        ox.e.a aVar = ox.e.f72197a;
        if (aVar.b().c() && com.transsion.baselib.report.launch.b.f43370a.b().getBoolean("k_pip_enable", true)) {
            aVar.b().a(activity, true, z11, viewGroup);
        }
    }

    @Override // st.e
    public void b(FragmentActivity activity, String ugcVideoId, String pageName, String str) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(ugcVideoId, "ugcVideoId");
        Intrinsics.h(pageName, "pageName");
        ox.b.f72191a.c().e(activity, null, ugcVideoId, pageName, str);
    }

    @Override // st.e
    public void c() {
        ox.b.C0878b.a(ox.b.f72191a.c(), false, 1, null);
    }

    @Override // st.e
    public com.transsion.player.orplayer.g d(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        return a0.f57933a.b(UGCShortTVFloatManager.f50153b.h(str));
    }

    @Override // st.e
    public boolean e(com.transsion.player.orplayer.g gVar) {
        return a0.f57933a.c(gVar);
    }

    @Override // st.e
    public boolean f(com.transsion.player.orplayer.g gVar) {
        return ox.c.f72196a.c(gVar);
    }

    @Override // st.e
    public void g(boolean z10, FragmentActivity fragmentActivity, ot.d bean) {
        Intrinsics.h(bean, "bean");
        if (z10) {
            if (fragmentActivity == null || fragmentActivity.isDestroyed() || fragmentActivity.isFinishing()) {
                return;
            }
            px.a aVarJ = j(bean);
            if (Build.VERSION.SDK_INT >= 31) {
                ox.e.f72197a.b().h(fragmentActivity, aVarJ);
            }
        }
        ox.e.f72197a.b().onPipModeChanged(z10);
    }

    @Override // st.e
    public void h(final FragmentActivity activity, ot.d bean) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(bean, "bean");
        px.a aVarJ = j(bean);
        if (!com.transsion.baselib.report.launch.b.f43370a.b().getBoolean("k_pip_enable", true)) {
            lg.a.f68839a.c("VideoFloat", "shottv 设置页pip开关被关闭了", true);
            return;
        }
        ox.e.a aVar = ox.e.f72197a;
        if (aVar.b().c()) {
            lg.a.f68839a.c("VideoFloat-pip", "shottv 当前可用画中画，使用画中画播放", true);
            aVar.b().k(activity, aVarJ, FloatActionType.HOME, false);
        } else {
            UGCShortTVFloatManager.f50153b.q(bean.f());
            ox.b.f72191a.c().g(activity, aVarJ, false, false, new Function1() { // from class: com.transsion.postdetail.shorttv_pugc.factory.e
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return f.k(activity, ((Boolean) obj).booleanValue());
                }
            }, new a());
        }
    }
}
