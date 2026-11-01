package com.transsion.player.longvideo.intercept;

import com.therouter.TheRouter;
import com.transsion.baselib.db.download.VipInfo;
import com.transsion.memberapi.IPremiumApi;
import com.transsion.moviedetailapi.bean.Subject;
import java.util.Iterator;
import java.util.List;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class h0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final h0 f48139a = new h0();

    private h0() {
    }

    public final int a(Subject subject) {
        VipInfo vipInfo;
        Integer freeEpisodeCount;
        if (subject == null || (vipInfo = subject.getVipInfo()) == null || (freeEpisodeCount = vipInfo.getFreeEpisodeCount()) == null) {
            return 0;
        }
        return freeEpisodeCount.intValue();
    }

    public final int b(Subject subject) {
        VipInfo vipInfo;
        Integer requireMemberType;
        Integer previewSeconds;
        if (subject == null || (vipInfo = subject.getVipInfo()) == null || (requireMemberType = vipInfo.getRequireMemberType()) == null || requireMemberType.intValue() != 1) {
            IPremiumApi iPremiumApi = (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
            if (iPremiumApi != null) {
                return iPremiumApi.w();
            }
            return 300000;
        }
        VipInfo vipInfo2 = subject.getVipInfo();
        if (vipInfo2 == null || (previewSeconds = vipInfo2.getPreviewSeconds()) == null) {
            return 300000;
        }
        return previewSeconds.intValue();
    }

    public final boolean c(Subject subject, int i11) {
        VipInfo vipInfo;
        Integer freeEpisodeCount;
        return ((subject == null || (vipInfo = subject.getVipInfo()) == null || (freeEpisodeCount = vipInfo.getFreeEpisodeCount()) == null) ? 0 : freeEpisodeCount.intValue()) > i11;
    }

    public final boolean d(Subject subject) {
        if (!(subject != null ? subject.isMovieType() : false)) {
            if (!(subject != null ? subject.isTvType() : false)) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x007b  */
    public final boolean e(Subject subject, String str) {
        int iIntValue;
        VipInfo vipInfo;
        Integer requireMemberType;
        List listS0;
        Integer num;
        IPremiumApi iPremiumApi = (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
        int iT = iPremiumApi != null ? iPremiumApi.t() : 720;
        if (str == null || (listS0 = StringsKt.S0(str, new String[]{","}, false, 0, 6, null)) == null) {
            iIntValue = 0;
        } else {
            Iterator it = listS0.iterator();
            if (it.hasNext()) {
                Integer numValueOf = Integer.valueOf(com.transsion.player.longvideo.member.q.f48233a.e(StringsKt.n1((String) it.next()).toString()));
                while (it.hasNext()) {
                    Integer numValueOf2 = Integer.valueOf(com.transsion.player.longvideo.member.q.f48233a.e(StringsKt.n1((String) it.next()).toString()));
                    if (numValueOf.compareTo(numValueOf2) < 0) {
                        numValueOf = numValueOf2;
                    }
                }
                num = numValueOf;
            } else {
                num = null;
            }
            if (num != null) {
                iIntValue = num.intValue();
            } else {
                iIntValue = 0;
            }
        }
        return !(subject == null || (vipInfo = subject.getVipInfo()) == null || (requireMemberType = vipInfo.getRequireMemberType()) == null || requireMemberType.intValue() != 1) || iIntValue >= iT;
    }

    public final boolean f(Subject subject) {
        VipInfo vipInfo;
        Integer requireMemberType;
        return (subject == null || (vipInfo = subject.getVipInfo()) == null || (requireMemberType = vipInfo.getRequireMemberType()) == null || requireMemberType.intValue() != 1) ? false : true;
    }
}
