package com.transsion.ad.monopoly.plan;

import com.blankj.utilcode.util.o;
import com.google.gson.reflect.TypeToken;
import com.transsion.ad.db.plan.MbAdDbPlans;
import com.transsion.ad.monopoly.model.AdMaterialList;
import com.transsion.ad.monopoly.model.AdPlans;
import com.transsion.ad.monopoly.model.CtxAttributeConfig;
import com.transsion.ad.monopoly.model.MbAdImage;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;

/* JADX INFO: loaded from: classes5.dex */
public final class AdPlansTransform {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AdPlansTransform f42168a = new AdPlansTransform();

    private AdPlansTransform() {
    }

    public final MbAdDbPlans a(AdPlans adPlans) {
        String id2;
        if (adPlans == null || (id2 = adPlans.getId()) == null) {
            id2 = "";
        }
        String str = id2;
        String version = adPlans != null ? adPlans.getVersion() : null;
        String name = adPlans != null ? adPlans.getName() : null;
        String startTime = adPlans != null ? adPlans.getStartTime() : null;
        String endTime = adPlans != null ? adPlans.getEndTime() : null;
        String extraConfig = adPlans != null ? adPlans.getExtraConfig() : null;
        Integer displayTimes = adPlans != null ? adPlans.getDisplayTimes() : null;
        Integer showedTimes = adPlans != null ? adPlans.getShowedTimes() : null;
        String showDate = adPlans != null ? adPlans.getShowDate() : null;
        String advertiserName = adPlans != null ? adPlans.getAdvertiserName() : null;
        String advertiserAvatar = adPlans != null ? adPlans.getAdvertiserAvatar() : null;
        String advertiserAvatarPath = adPlans != null ? adPlans.getAdvertiserAvatarPath() : null;
        List<String> brand = adPlans != null ? adPlans.getBrand() : null;
        List<String> denyBrand = adPlans != null ? adPlans.getDenyBrand() : null;
        List<String> model = adPlans != null ? adPlans.getModel() : null;
        List<String> denyModel = adPlans != null ? adPlans.getDenyModel() : null;
        List<String> country = adPlans != null ? adPlans.getCountry() : null;
        List<String> scenes = adPlans != null ? adPlans.getScenes() : null;
        String adPlanUpdateTime = adPlans != null ? adPlans.getAdPlanUpdateTime() : null;
        String adSource = adPlans != null ? adPlans.getAdSource() : null;
        String extAdSlot = adPlans != null ? adPlans.getExtAdSlot() : null;
        Integer sort = adPlans != null ? adPlans.getSort() : null;
        return new MbAdDbPlans(str, version, name, startTime, endTime, extraConfig, displayTimes, showedTimes, showDate, advertiserName, advertiserAvatar, advertiserAvatarPath, brand, denyBrand, model, denyModel, country, scenes, adSource, extAdSlot, o.j(adPlans != null ? adPlans.getAdMaterialList() : null), adPlanUpdateTime, sort, adPlans != null ? adPlans.getAdShowLevel() : null, adPlans != null ? adPlans.getFilterClientVersion() : null, adPlans != null ? adPlans.getAdPlanCreateTime() : null, adPlans != null ? adPlans.getAppStarDesc() : null, adPlans != null ? adPlans.getAppSizeDesc() : null, adPlans != null ? adPlans.getCtxEnableExpr() : null, adPlans != null ? adPlans.getCtxDisableExpr() : null, o.j(adPlans != null ? adPlans.getCtxAttributeConfig() : null), adPlans != null ? adPlans.getDispatchTimeStart() : null, adPlans != null ? adPlans.getDispatchTimeEnd() : null, o.j(adPlans != null ? adPlans.getExtImage() : null), adPlans != null ? adPlans.getBidEcpmCent() : null, adPlans != null ? adPlans.getEcpmCent() : null, adPlans != null ? adPlans.isValid() : false, adPlans != null ? adPlans.getH5LinkPreload() : false, adPlans != null ? adPlans.getH5LinkOpenByCct() : false, adPlans != null ? adPlans.getCountryCode() : null);
    }

    public final AdPlans b(MbAdDbPlans mbAdDbPlans) {
        Object objM454constructorimpl;
        if (mbAdDbPlans == null) {
            return null;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            String id2 = mbAdDbPlans.getId();
            String version = mbAdDbPlans.getVersion();
            String name = mbAdDbPlans.getName();
            String advertiserName = mbAdDbPlans.getAdvertiserName();
            String advertiserAvatar = mbAdDbPlans.getAdvertiserAvatar();
            String advertiserAvatarPath = mbAdDbPlans.getAdvertiserAvatarPath();
            Integer displayTimes = mbAdDbPlans.getDisplayTimes();
            Integer showedTimes = mbAdDbPlans.getShowedTimes();
            String showDate = mbAdDbPlans.getShowDate();
            List<String> scenes = mbAdDbPlans.getScenes();
            List<String> country = mbAdDbPlans.getCountry();
            List<String> brand = mbAdDbPlans.getBrand();
            List<String> denyBrand = mbAdDbPlans.getDenyBrand();
            List<String> model = mbAdDbPlans.getModel();
            List<String> denyModel = mbAdDbPlans.getDenyModel();
            String startTime = mbAdDbPlans.getStartTime();
            String endTime = mbAdDbPlans.getEndTime();
            String extraConfig = mbAdDbPlans.getExtraConfig();
            String adPlanUpdateTime = mbAdDbPlans.getAdPlanUpdateTime();
            String adSource = mbAdDbPlans.getAdSource();
            String extAdSlot = mbAdDbPlans.getExtAdSlot();
            Integer sort = mbAdDbPlans.getSort();
            String adShowLevel = mbAdDbPlans.getAdShowLevel();
            objM454constructorimpl = Result.m454constructorimpl(new AdPlans(id2, name, sort, advertiserName, advertiserAvatar, advertiserAvatarPath, showedTimes, showDate, scenes, displayTimes, country, brand, denyBrand, model, denyModel, mbAdDbPlans.getFilterClientVersion(), startTime, endTime, extraConfig, (List) o.e(mbAdDbPlans.getAdMaterialList(), new TypeToken<List<? extends AdMaterialList>>() { // from class: com.transsion.ad.monopoly.plan.AdPlansTransform$transformPlanDb2Bean$1$adPlans$1
            }.getType()), mbAdDbPlans.getAdPlanCreateTime(), adPlanUpdateTime, adShowLevel, mbAdDbPlans.getAppStarDesc(), mbAdDbPlans.getAppSizeDesc(), mbAdDbPlans.getCtxEnableExpr(), mbAdDbPlans.getCtxDisableExpr(), (CtxAttributeConfig) o.d(mbAdDbPlans.getCtxAttributeConfig(), CtxAttributeConfig.class), mbAdDbPlans.getDispatchTimeStart(), mbAdDbPlans.getDispatchTimeEnd(), adSource, extAdSlot, (MbAdImage) o.d(mbAdDbPlans.getExtImage(), MbAdImage.class), version, mbAdDbPlans.getBidEcpmCent(), mbAdDbPlans.getEcpmCent(), mbAdDbPlans.isValid(), mbAdDbPlans.getH5LinkPreload(), mbAdDbPlans.getH5LinkOpenByCct(), mbAdDbPlans.getCountryCode()));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        return (AdPlans) (Result.m457exceptionOrNullimpl(objM454constructorimpl) == null ? objM454constructorimpl : null);
    }
}
