package com.transsion.ad.monopoly.intercept;

import android.text.TextUtils;
import com.transsion.ad.db.plan.MbAdDbPlans;
import com.transsion.ad.monopoly.model.AdPlansHitResponse;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class SceneInWhitelistHandler extends a {
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.transsion.ad.monopoly.intercept.a
    public Object b(String str, MbAdDbPlans mbAdDbPlans, Map map, Continuation continuation) throws Throwable {
        SceneInWhitelistHandler$doHandle$1 sceneInWhitelistHandler$doHandle$1;
        String lowerCase;
        String lowerCase2;
        if (continuation instanceof SceneInWhitelistHandler$doHandle$1) {
            sceneInWhitelistHandler$doHandle$1 = (SceneInWhitelistHandler$doHandle$1) continuation;
            int i11 = sceneInWhitelistHandler$doHandle$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                sceneInWhitelistHandler$doHandle$1.label = i11 - Integer.MIN_VALUE;
            } else {
                sceneInWhitelistHandler$doHandle$1 = new SceneInWhitelistHandler$doHandle$1(this, continuation);
            }
        } else {
            sceneInWhitelistHandler$doHandle$1 = new SceneInWhitelistHandler$doHandle$1(this, continuation);
        }
        Object objB = sceneInWhitelistHandler$doHandle$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = sceneInWhitelistHandler$doHandle$1.label;
        if (i12 == 0) {
            ResultKt.b(objB);
            List<String> scenes = mbAdDbPlans != null ? mbAdDbPlans.getScenes() : null;
            List<String> list = scenes;
            if (list != null && !list.isEmpty()) {
                List<String> list2 = scenes;
                if (!(list2 instanceof Collection) || !list2.isEmpty()) {
                    Iterator<T> it = list2.iterator();
                    do {
                        if (it.hasNext()) {
                            String str2 = (String) it.next();
                            Locale locale = Locale.ROOT;
                            lowerCase = str2.toLowerCase(locale);
                            Intrinsics.g(lowerCase, "toLowerCase(...)");
                            lowerCase2 = str.toLowerCase(locale);
                            Intrinsics.g(lowerCase2, "toLowerCase(...)");
                        }
                    } while (!TextUtils.equals(lowerCase, lowerCase2));
                }
                return new AdPlansHitResponse(false, "当前场景不在白名单中");
            }
            a aVarC = c();
            if (aVarC != null) {
                sceneInWhitelistHandler$doHandle$1.label = 1;
                objB = aVarC.b(str, mbAdDbPlans, map, sceneInWhitelistHandler$doHandle$1);
                if (objB == objF) {
                    return objF;
                }
            }
            return e();
        }
        if (i12 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(objB);
        AdPlansHitResponse adPlansHitResponse = (AdPlansHitResponse) objB;
        if (adPlansHitResponse != null) {
            return adPlansHitResponse;
        }
        return e();
    }
}
