package com.transsion.postdetail.shorttv_pugc.factory;

import androidx.fragment.app.FragmentActivity;
import com.blankj.utilcode.util.Utils;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.shorttv_pugc.ShorttvModel;
import com.transsion.shorttv_pugc.bean.Cover;
import com.transsion.ugcvideodetail.api.UGCVideoType;
import com.transsnet.downloader.DownloadManagerApi;
import com.transsnet.downloader.manager.DownloadEsHelper;
import com.transsnet.downloader.manager.p;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import lj.m0;

/* JADX INFO: loaded from: classes6.dex */
public final class PugcShortTvDownloadProvider implements st.c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private st.j f49298b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lazy f49297a = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.shorttv_pugc.factory.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return PugcShortTvDownloadProvider.h();
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final m0 f49299c = new a();

    public static final class a extends lj.a {
        a() {
        }

        @Override // lj.a, lj.m0
        public void e(DownloadBean bean, String str) {
            Intrinsics.h(bean, "bean");
            st.j jVar = PugcShortTvDownloadProvider.this.f49298b;
            if (jVar != null) {
                String ugcVideoId = bean.getUgcVideoId();
                Integer ugcVideoPosition = bean.getUgcVideoPosition();
                jVar.a(ugcVideoId, ugcVideoPosition != null ? ugcVideoPosition.intValue() : bean.getEp());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.transsnet.downloader.manager.g h() {
        return p.f59500a.a(Utils.a());
    }

    private final com.transsnet.downloader.manager.g i() {
        return (com.transsnet.downloader.manager.g) this.f49297a.getValue();
    }

    private final ShorttvModel.UGCVideo j(DownloadBean downloadBean) {
        ShorttvModel.UGCVideo uGCVideo = new ShorttvModel.UGCVideo(downloadBean.videoUGCId(), downloadBean.getTitleName(), null, null, new Cover(null, null, null, downloadBean.getUrl(), null, downloadBean.getThumbnail(), null, null, null, 471, null), null, downloadBean.getDuration(), null, null, null, downloadBean.getUgcVideoType(), null, new ShorttvModel.UGCVideoCreator(null, null, null, null, 15, null), new ShorttvModel.UGCVideoInteractiveInfo(null, null, null, null, null, null, null, 127, null), new ShorttvModel.UGCVideoCollection(downloadBean.getUgcVideoCollectionId(), null, Integer.valueOf(downloadBean.videoUGCPosition()), null, 10, null), downloadBean.getOps(), null, null, null, null, 0, false, null, false, 16714668, null);
        uGCVideo.setPlayUrl(downloadBean.getPath());
        return uGCVideo;
    }

    @Override // st.c
    public void a(FragmentActivity activity, String collectionId, String str, String str2, String str3, String str4, String str5) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(collectionId, "collectionId");
        DownloadManagerApi.f58398j.a().f0(activity, (7940 & 2) != 0 ? null : collectionId, (7940 & 4) != 0 ? null : null, (7940 & 8) != 0 ? null : str, (7940 & 16) != 0 ? null : UGCVideoType.SHORT_TV.getValue(), (7940 & 32) != 0 ? null : str3, (7940 & 64) != 0 ? null : str4, (7940 & 128) != 0 ? null : str5, (7940 & 256) != 0 ? null : null, (7940 & 512) != 0 ? null : null, (7940 & 1024) != 0 ? null : null, (7940 & 2048) != 0 ? false : false, (7940 & 4096) == 0 ? null : null);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // st.c
    public Object b(String str, Continuation continuation) throws Throwable {
        PugcShortTvDownloadProvider$fetchDownloadList$1 pugcShortTvDownloadProvider$fetchDownloadList$1;
        if (continuation instanceof PugcShortTvDownloadProvider$fetchDownloadList$1) {
            pugcShortTvDownloadProvider$fetchDownloadList$1 = (PugcShortTvDownloadProvider$fetchDownloadList$1) continuation;
            int i11 = pugcShortTvDownloadProvider$fetchDownloadList$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                pugcShortTvDownloadProvider$fetchDownloadList$1.label = i11 - Integer.MIN_VALUE;
            } else {
                pugcShortTvDownloadProvider$fetchDownloadList$1 = new PugcShortTvDownloadProvider$fetchDownloadList$1(this, continuation);
            }
        } else {
            pugcShortTvDownloadProvider$fetchDownloadList$1 = new PugcShortTvDownloadProvider$fetchDownloadList$1(this, continuation);
        }
        Object objP = pugcShortTvDownloadProvider$fetchDownloadList$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = pugcShortTvDownloadProvider$fetchDownloadList$1.label;
        ArrayList arrayList = null;
        if (i12 == 0) {
            ResultKt.b(objP);
            if (str == null) {
                return null;
            }
            DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f59419m.a();
            pugcShortTvDownloadProvider$fetchDownloadList$1.label = 1;
            objP = downloadEsHelperA.P(str, pugcShortTvDownloadProvider$fetchDownloadList$1);
            if (objP == objF) {
                return objF;
            }
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(objP);
        }
        List list = (List) objP;
        if (list != null) {
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : list) {
                if (((DownloadBean) obj).isCompleted()) {
                    arrayList2.add(obj);
                }
            }
            arrayList = new ArrayList(CollectionsKt.v(arrayList2, 10));
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                arrayList.add(j((DownloadBean) it.next()));
            }
        }
        return arrayList;
    }

    @Override // st.c
    public void c() {
        i().x(this.f49299c);
        this.f49298b = null;
    }

    @Override // st.c
    public void d(st.j listener) {
        Intrinsics.h(listener, "listener");
        this.f49298b = listener;
        i().e(this.f49299c);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // st.c
    public Object e(String str, Continuation continuation) throws Throwable {
        PugcShortTvDownloadProvider$getDownloadUGCVideo$1 pugcShortTvDownloadProvider$getDownloadUGCVideo$1;
        if (continuation instanceof PugcShortTvDownloadProvider$getDownloadUGCVideo$1) {
            pugcShortTvDownloadProvider$getDownloadUGCVideo$1 = (PugcShortTvDownloadProvider$getDownloadUGCVideo$1) continuation;
            int i11 = pugcShortTvDownloadProvider$getDownloadUGCVideo$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                pugcShortTvDownloadProvider$getDownloadUGCVideo$1.label = i11 - Integer.MIN_VALUE;
            } else {
                pugcShortTvDownloadProvider$getDownloadUGCVideo$1 = new PugcShortTvDownloadProvider$getDownloadUGCVideo$1(this, continuation);
            }
        } else {
            pugcShortTvDownloadProvider$getDownloadUGCVideo$1 = new PugcShortTvDownloadProvider$getDownloadUGCVideo$1(this, continuation);
        }
        Object objR = pugcShortTvDownloadProvider$getDownloadUGCVideo$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = pugcShortTvDownloadProvider$getDownloadUGCVideo$1.label;
        if (i12 == 0) {
            ResultKt.b(objR);
            if (str == null) {
                return null;
            }
            DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f59419m.a();
            pugcShortTvDownloadProvider$getDownloadUGCVideo$1.label = 1;
            objR = downloadEsHelperA.R(str, pugcShortTvDownloadProvider$getDownloadUGCVideo$1);
            if (objR == objF) {
                return objF;
            }
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(objR);
        }
        DownloadBean downloadBean = (DownloadBean) objR;
        if (downloadBean != null) {
            return j(downloadBean);
        }
        return null;
    }
}
