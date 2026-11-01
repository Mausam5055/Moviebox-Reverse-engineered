package com.transsion.ad.monopoly.manager;

import android.app.Application;
import android.text.TextUtils;
import com.blankj.utilcode.util.Utils;
import com.transsion.ad.db.plan.MbAdDbPlans;
import com.transsion.ad.monopoly.model.AdMaterialList;
import com.transsion.ad.monopoly.model.AdPlans;
import com.transsion.ad.monopoly.model.MbAdImage;
import com.transsion.ad.monopoly.model.MbAdPlansBean;
import com.transsion.ad.monopoly.model.MbAdPlansDto;
import com.transsion.ad.monopoly.model.MbAdVideo;
import com.transsion.ad.monopoly.plan.AdPlansTransform;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i;
import kotlinx.coroutines.y0;
import ti.f;

/* JADX INFO: loaded from: classes5.dex */
public final class AdPlansAssetsManager extends c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final AdPlansAssetsManager f42149b = new AdPlansAssetsManager();

    private AdPlansAssetsManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final MbAdPlansDto e(MbAdPlansDto mbAdPlansDto) {
        List<AdPlans> adPlans;
        MbAdPlansBean data = mbAdPlansDto.getData();
        if (data != null && (adPlans = data.getAdPlans()) != null) {
            for (AdPlans adPlans2 : adPlans) {
                AdPlansAssetsManager adPlansAssetsManager = f42149b;
                String advertiserAvatar = adPlans2.getAdvertiserAvatar();
                if (advertiserAvatar == null) {
                    advertiserAvatar = "";
                }
                String strG = adPlansAssetsManager.g(advertiserAvatar);
                if (!TextUtils.isEmpty(strG)) {
                    adPlans2.setAdvertiserAvatarPath(strG);
                }
                List<AdMaterialList> adMaterialList = adPlans2.getAdMaterialList();
                if (adMaterialList != null) {
                    for (AdMaterialList adMaterialList2 : adMaterialList) {
                        MbAdVideo video = adMaterialList2.getVideo();
                        if (video != null) {
                            AdPlansAssetsManager adPlansAssetsManager2 = f42149b;
                            String url = video.getUrl();
                            if (url == null) {
                                url = "";
                            }
                            String strG2 = adPlansAssetsManager2.g(url);
                            if (!TextUtils.isEmpty(strG2)) {
                                video.setPath(strG2);
                                adMaterialList2.setDownloadMaterialSuccess(true);
                            }
                        }
                        MbAdImage image = adMaterialList2.getImage();
                        if (image != null) {
                            AdPlansAssetsManager adPlansAssetsManager3 = f42149b;
                            String url2 = image.getUrl();
                            if (url2 == null) {
                                url2 = "";
                            }
                            String strG3 = adPlansAssetsManager3.g(url2);
                            if (!TextUtils.isEmpty(strG3)) {
                                image.setPath(strG3);
                                adMaterialList2.setDownloadMaterialSuccess(true);
                            }
                        }
                    }
                }
            }
        }
        return mbAdPlansDto;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object f(MbAdPlansDto mbAdPlansDto, Continuation continuation) throws Throwable {
        MbAdPlansBean data = mbAdPlansDto.getData();
        if (data != null) {
            ArrayList arrayList = new ArrayList();
            List<AdPlans> adPlans = data.getAdPlans();
            if (adPlans != null) {
                Iterator<T> it = adPlans.iterator();
                while (it.hasNext()) {
                    MbAdDbPlans mbAdDbPlansA = AdPlansTransform.f42168a.a((AdPlans) it.next());
                    mbAdDbPlansA.setVersion(data.getVersion());
                    arrayList.add(mbAdDbPlansA);
                }
            }
            Object objQ = AdPlansStorageManager.f42153a.q(arrayList, continuation);
            if (objQ == IntrinsicsKt.f()) {
                return objQ;
            }
        }
        return Unit.f67061a;
    }

    private final String g(String str) {
        File file = new File(com.transsion.ad.a.f41780a.b(), System.currentTimeMillis() + ".mineType");
        f fVar = f.f76255a;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        if (fVar.a(applicationA, str, file)) {
            return file.getAbsolutePath();
        }
        return null;
    }

    @Override // com.transsion.ad.monopoly.manager.c
    public Object b(Continuation continuation) {
        Object objG = i.g(y0.b(), new AdPlansAssetsManager$innerCopy$2(null), continuation);
        return objG == IntrinsicsKt.f() ? objG : Unit.f67061a;
    }
}
