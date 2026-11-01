package com.transsion.ad.monopoly.intercept;

import android.text.TextUtils;
import com.tencent.mmkv.MMKV;
import com.transsion.ad.db.plan.MbAdDbPlans;
import com.transsion.ad.monopoly.model.AdPlansHitResponse;
import java.util.Collection;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes5.dex */
public final class InDenyBrandHandler extends a {
    /* JADX WARN: Code duplicated, block: B:7:0x0018  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v13, types: [T, java.lang.String] */
    @Override // com.transsion.ad.monopoly.intercept.a
    public Object b(String str, MbAdDbPlans mbAdDbPlans, Map map, Continuation continuation) throws Throwable {
        InDenyBrandHandler$doHandle$1 inDenyBrandHandler$doHandle$1;
        T t11;
        String string;
        if (continuation instanceof InDenyBrandHandler$doHandle$1) {
            inDenyBrandHandler$doHandle$1 = (InDenyBrandHandler$doHandle$1) continuation;
            int i11 = inDenyBrandHandler$doHandle$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                inDenyBrandHandler$doHandle$1.label = i11 - Integer.MIN_VALUE;
            } else {
                inDenyBrandHandler$doHandle$1 = new InDenyBrandHandler$doHandle$1(this, continuation);
            }
        } else {
            inDenyBrandHandler$doHandle$1 = new InDenyBrandHandler$doHandle$1(this, continuation);
        }
        Object objB = inDenyBrandHandler$doHandle$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = inDenyBrandHandler$doHandle$1.label;
        if (i12 == 0) {
            ResultKt.b(objB);
            List<String> denyBrand = mbAdDbPlans != null ? mbAdDbPlans.getDenyBrand() : null;
            List<String> list = denyBrand;
            if (list != null && !list.isEmpty()) {
                Ref.ObjectRef objectRef = new Ref.ObjectRef();
                MMKV mmkvC = bh.a.f16469a.c();
                String str2 = "";
                if (mmkvC != null && (string = mmkvC.getString("phone_brand", "")) != null) {
                    t11 = str2;
                    t11 = str2;
                    t11 = string;
                }
                t11 = str2;
                t11 = str2;
                t11 = str2;
                objectRef.element = t11;
                if (TextUtils.isEmpty((CharSequence) t11)) {
                    objectRef.element = ih.b.f65241a.d();
                }
                List<String> list2 = denyBrand;
                if (!(list2 instanceof Collection) || !list2.isEmpty()) {
                    for (String str3 : list2) {
                        Locale locale = Locale.ROOT;
                        String lowerCase = str3.toLowerCase(locale);
                        Intrinsics.g(lowerCase, "toLowerCase(...)");
                        String lowerCase2 = ((String) objectRef.element).toLowerCase(locale);
                        Intrinsics.g(lowerCase2, "toLowerCase(...)");
                        if (!StringsKt.c0(lowerCase, lowerCase2, false, 2, null)) {
                            String lowerCase3 = ((String) objectRef.element).toLowerCase(locale);
                            Intrinsics.g(lowerCase3, "toLowerCase(...)");
                            String lowerCase4 = str3.toLowerCase(locale);
                            Intrinsics.g(lowerCase4, "toLowerCase(...)");
                            if (StringsKt.c0(lowerCase3, lowerCase4, false, 2, null)) {
                            }
                        }
                        return new AdPlansHitResponse(false, "当前手机品牌在黑名单中");
                    }
                }
            }
            a aVarC = c();
            if (aVarC != null) {
                inDenyBrandHandler$doHandle$1.label = 1;
                objB = aVarC.b(str, mbAdDbPlans, map, inDenyBrandHandler$doHandle$1);
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
