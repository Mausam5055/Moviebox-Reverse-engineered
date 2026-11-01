package com.transsion.member;

import com.transsion.memberapi.MemberFeatureData;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes5.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final g f46558a = new g();

    private g() {
    }

    public final List a(List list) {
        if (list == null) {
            list = CollectionsKt.l();
        }
        ArrayList arrayList = new ArrayList();
        for (MemberFeatureData memberFeatureData : list) {
            String featureIcon = memberFeatureData.getFeatureIcon();
            h hVar = null;
            String string = featureIcon != null ? StringsKt.n1(featureIcon).toString() : null;
            String str = string == null ? "" : string;
            String featureName = memberFeatureData.getFeatureName();
            String string2 = featureName != null ? StringsKt.n1(featureName).toString() : null;
            String str2 = string2 == null ? "" : string2;
            if (str.length() != 0 && str2.length() != 0) {
                String featureLink = memberFeatureData.getFeatureLink();
                String str3 = featureLink == null ? "" : featureLink;
                i.a aVar = i.f46580a;
                hVar = new h(str, str2, str3, aVar.a(memberFeatureData.getBasic()), aVar.a(memberFeatureData.getPro()));
            }
            if (hVar != null) {
                arrayList.add(hVar);
            }
        }
        return arrayList;
    }
}
