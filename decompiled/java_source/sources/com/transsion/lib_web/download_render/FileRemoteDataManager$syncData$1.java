package com.transsion.lib_web.download_render;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.lib_web.download_render.data.PageData;
import com.transsion.lib_web.download_render.data.PageListData;
import gm.i;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 0, 0})
@DebugMetadata(c = "com.transsion.lib_web.download_render.FileRemoteDataManager$syncData$1", f = "FileRemoteDataManager.kt", l = {43}, m = "invokeSuspend")
final class FileRemoteDataManager$syncData$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    Object L$0;
    int label;

    FileRemoteDataManager$syncData$1(Continuation<? super FileRemoteDataManager$syncData$1> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new FileRemoteDataManager$syncData$1(continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((FileRemoteDataManager$syncData$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        String str;
        Long lX;
        Long lX2;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                FileRemoteDataManager fileRemoteDataManager = FileRemoteDataManager.f46158a;
                fileRemoteDataManager.h().putLong(FileRemoteDataManager.f46165h, System.currentTimeMillis());
                String strK = c.f46167a.k();
                g gVarG = fileRemoteDataManager.g();
                String strI = fileRemoteDataManager.i();
                this.L$0 = strK;
                this.label = 1;
                obj = g.a.a(gVarG, strI, strK, null, this, 4, null);
                if (obj == objF) {
                    return objF;
                }
                str = strK;
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                str = (String) this.L$0;
                ResultKt.b(obj);
            }
            PageListData pageListData = (PageListData) ((BaseDto) obj).getData();
            if (pageListData != null && pageListData.getVersion() != null && !Intrinsics.c(pageListData.getVersion(), str)) {
                HashMap map = new HashMap();
                List<PageData> h5Pages = pageListData.getH5Pages();
                if (h5Pages == null) {
                    h5Pages = CollectionsKt.l();
                }
                for (PageData pageData : h5Pages) {
                    String url = pageData.getUrl();
                    if (url != null) {
                        PageData pageData2 = (PageData) map.get(url);
                        if (pageData2 == null) {
                            map.put(url, pageData);
                        } else {
                            String versionCode = pageData2.getVersionCode();
                            long jLongValue = 0;
                            long jLongValue2 = (versionCode == null || (lX2 = StringsKt.x(versionCode)) == null) ? 0L : lX2.longValue();
                            String versionCode2 = pageData.getVersionCode();
                            if (versionCode2 != null && (lX = StringsKt.x(versionCode2)) != null) {
                                jLongValue = lX.longValue();
                            }
                            if (jLongValue > jLongValue2) {
                                map.put(url, pageData);
                            }
                        }
                    }
                }
                Collection collectionValues = map.values();
                Intrinsics.g(collectionValues, "<get-values>(...)");
                pageListData.setH5Pages(CollectionsKt.U0(collectionValues));
                c.f46167a.p(pageListData);
                FileDownloadTaskManager.f46147a.g(pageListData.getH5Pages());
            }
        } catch (Throwable th2) {
            i.f63883a.b("DR_FileRemoteDataManager", "<syncData> fail:" + th2);
        }
        return Unit.f67061a;
    }
}
