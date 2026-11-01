package com.wecloud.load.lib;

import android.util.Log;
import com.wecloud.load.lib.bean.SoZipInfo;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "Lcom/wecloud/load/lib/SoLoadService$b;", "<anonymous>", "(Lkotlinx/coroutines/n0;)Lcom/wecloud/load/lib/SoLoadService$b;"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.wecloud.load.lib.SoLoadService$processSoZip$2", f = "SoLoadService.kt", l = {}, m = "invokeSuspend")
@SourceDebugExtension
final class SoLoadService$processSoZip$2 extends SuspendLambda implements Function2<n0, Continuation<? super SoLoadService.b>, Object> {
    final /* synthetic */ SoZipInfo $soZipInfo;
    final /* synthetic */ int $zipIndex;
    int label;
    final /* synthetic */ SoLoadService this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SoLoadService$processSoZip$2(SoZipInfo soZipInfo, int i11, SoLoadService soLoadService, Continuation<? super SoLoadService$processSoZip$2> continuation) {
        super(2, continuation);
        this.$soZipInfo = soZipInfo;
        this.$zipIndex = i11;
        this.this$0 = soLoadService;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SoLoadService$processSoZip$2(this.$soZipInfo, this.$zipIndex, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super SoLoadService.b> continuation) {
        return ((SoLoadService$processSoZip$2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x034e  */
    /* JADX WARN: Code duplicated, block: B:103:0x035a A[LOOP:7: B:101:0x0354->B:103:0x035a, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:106:0x0393  */
    /* JADX WARN: Code duplicated, block: B:109:0x039f A[LOOP:8: B:107:0x0399->B:109:0x039f, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:113:0x03bf  */
    /* JADX WARN: Code duplicated, block: B:131:0x0496  */
    /* JADX WARN: Code duplicated, block: B:137:0x04ce  */
    /* JADX WARN: Code duplicated, block: B:140:0x04da  */
    /* JADX WARN: Code duplicated, block: B:156:0x03db A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:157:0x0419 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:158:0x03e6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:159:0x0458 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:160:0x0421 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:162:0x03b9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:166:0x015b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:167:0x0189 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:32:0x014e  */
    /* JADX WARN: Code duplicated, block: B:37:0x015d  */
    /* JADX WARN: Code duplicated, block: B:40:0x0167  */
    /* JADX WARN: Code duplicated, block: B:42:0x0178  */
    /* JADX WARN: Code duplicated, block: B:49:0x018c  */
    /* JADX WARN: Code duplicated, block: B:52:0x01a7 A[LOOP:1: B:50:0x01a1->B:52:0x01a7, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:53:0x01ba  */
    /* JADX WARN: Code duplicated, block: B:56:0x01c0  */
    /* JADX WARN: Code duplicated, block: B:58:0x01c4  */
    /* JADX WARN: Code duplicated, block: B:61:0x01d0 A[LOOP:2: B:59:0x01ca->B:61:0x01d0, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:64:0x01f2  */
    /* JADX WARN: Code duplicated, block: B:67:0x01fe A[LOOP:3: B:65:0x01f8->B:67:0x01fe, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:70:0x0241  */
    /* JADX WARN: Code duplicated, block: B:73:0x024d A[LOOP:4: B:71:0x0247->B:73:0x024d, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:80:0x0272  */
    /* JADX WARN: Code duplicated, block: B:82:0x0275  */
    /* JADX WARN: Code duplicated, block: B:84:0x02b3  */
    /* JADX WARN: Code duplicated, block: B:87:0x02c4 A[LOOP:5: B:85:0x02be->B:87:0x02c4, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:93:0x0313 A[LOOP:6: B:91:0x030d->B:93:0x0313, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:94:0x0325  */
    /* JADX WARN: Code duplicated, block: B:97:0x0331 A[LOOP:9: B:95:0x032b->B:97:0x0331, LOOP_END] */
    /* JADX WARN: Instruction removed from duplicated block: B:82:0x0275, please report this as an issue */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        boolean z10;
        boolean z11;
        SoLoadService soLoadService;
        String method_name;
        SoZipInfo soZipInfo;
        SoLoadService soLoadService2;
        String str;
        t1 t1Var;
        File file;
        String strA;
        SoLoadService soLoadService3;
        Iterator<T> it;
        gz.c cVar;
        SoLoadService soLoadService4;
        Iterator<T> it2;
        SoLoadService soLoadService5;
        SoLoadService soLoadService6;
        Iterator<T> it3;
        SoLoadService soLoadService7;
        Iterator<T> it4;
        String md5;
        boolean z12;
        SoLoadService soLoadService8;
        Iterator<T> it5;
        gz.d dVar;
        String strA2;
        SoLoadService soLoadService9;
        SoLoadService soLoadService10;
        Iterator<T> it6;
        File file2;
        SoLoadService soLoadService11;
        Iterator<T> it7;
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        ArrayList arrayList = new ArrayList();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        gz.e eVar = new gz.e();
        List<String> so_names = this.$soZipInfo.getSo_names();
        if (so_names == null) {
            so_names = CollectionsKt.l();
        }
        if (so_names.isEmpty()) {
            lg.a.C0828a.z(lg.a.f68839a, "SoLoadService", "ZIP包 " + this.$zipIndex + " 没有指定SO文件名", false, 4, null);
            return new SoLoadService.b(arrayList, linkedHashMap, false, 4, null);
        }
        List<String> list = so_names;
        SoLoadService soLoadService12 = this.this$0;
        Iterator<T> it8 = list.iterator();
        while (it8.hasNext()) {
            soLoadService12.downloadProgressMap.put((String) it8.next(), Boxing.d(0));
        }
        gz.c cVar2 = gz.c.f64038a;
        File fileF = cVar2.f(this.this$0, this.$soZipInfo.getZip_url());
        File fileD = cVar2.d(this.this$0, this.$zipIndex);
        if (cVar2.c(fileF)) {
            String md6 = this.$soZipInfo.getMd5();
            if (md6 == null || StringsKt.q0(md6)) {
                lg.a.C0828a.f(lg.a.f68839a, "SoLoadService", "ZIP文件已存在（无MD5校验）: " + this.$soZipInfo.getZip_url(), false, 4, null);
            } else {
                gz.d dVar2 = gz.d.f64039a;
                if (dVar2.b(dVar2.a(fileF), this.$soZipInfo.getMd5())) {
                    lg.a.C0828a.f(lg.a.f68839a, "SoLoadService", "ZIP文件已存在且MD5匹配: " + this.$soZipInfo.getZip_url(), false, 4, null);
                } else {
                    lg.a.C0828a.f(lg.a.f68839a, "SoLoadService", "ZIP文件MD5不匹配，需要重新下载: " + this.$soZipInfo.getZip_url(), false, 4, null);
                }
            }
            z10 = false;
            if (z10) {
                z11 = false;
            } else {
                if ((list instanceof Collection) || !list.isEmpty()) {
                    it6 = list.iterator();
                    while (true) {
                        if (it6.hasNext()) {
                            file2 = new File(fileD, (String) it6.next());
                            if (file2.exists() || !file2.isFile() || file2.length() <= 0) {
                                z11 = false;
                            }
                        } else {
                            z11 = true;
                        }
                    }
                } else {
                    z11 = true;
                }
                if (z11) {
                    lg.a.C0828a.f(lg.a.f68839a, "SoLoadService", "所有SO文件已存在，跳过下载和解压，直接复用", false, 4, null);
                    soLoadService11 = this.this$0;
                    it7 = list.iterator();
                    while (it7.hasNext()) {
                        soLoadService11.downloadProgressMap.put((String) it7.next(), Boxing.d(75));
                    }
                }
            }
            if (!z11) {
                if (z10) {
                    soLoadService6 = this.this$0;
                    it3 = list.iterator();
                    while (it3.hasNext()) {
                        soLoadService6.downloadProgressMap.put((String) it3.next(), Boxing.d(10));
                    }
                    if (!eVar.b(this.$soZipInfo.getZip_url(), fileF)) {
                        soLoadService10 = this.this$0;
                        for (String str2 : list) {
                            linkedHashMap.put(str2, "ZIP下载失败");
                            soLoadService10.downloadProgressMap.put(str2, Boxing.d(-1));
                        }
                        lg.a.C0828a.l(lg.a.f68839a, "SoLoadService", "ZIP下载失败: " + this.$soZipInfo.getZip_url(), false, 4, null);
                        return new SoLoadService.b(arrayList, linkedHashMap, false, 4, null);
                    }
                    soLoadService7 = this.this$0;
                    it4 = list.iterator();
                    while (it4.hasNext()) {
                        soLoadService7.downloadProgressMap.put((String) it4.next(), Boxing.d(30));
                    }
                    md5 = this.$soZipInfo.getMd5();
                    if (md5 != null || StringsKt.q0(md5)) {
                        z12 = true;
                    } else {
                        z12 = false;
                    }
                    if (!z12) {
                        dVar = gz.d.f64039a;
                        strA2 = dVar.a(fileF);
                        lg.a.C0828a.f(lg.a.f68839a, "SoLoadService", "ZIP文件MD5: downloadedMd5=" + strA2 + ", soZipInfoMd5=" + this.$soZipInfo.getMd5(), false, 4, null);
                        if (!dVar.b(strA2, this.$soZipInfo.getMd5())) {
                            gz.c.f64038a.b(fileF);
                            soLoadService9 = this.this$0;
                            for (String str3 : list) {
                                linkedHashMap.put(str3, "ZIP MD5校验失败");
                                soLoadService9.downloadProgressMap.put(str3, Boxing.d(-1));
                            }
                            lg.a.C0828a.l(lg.a.f68839a, "SoLoadService", "ZIP文件MD5校验失败: " + this.$soZipInfo.getZip_url(), false, 4, null);
                            return new SoLoadService.b(arrayList, linkedHashMap, false, 4, null);
                        }
                    }
                    soLoadService8 = this.this$0;
                    it5 = list.iterator();
                    while (it5.hasNext()) {
                        soLoadService8.downloadProgressMap.put((String) it5.next(), Boxing.d(50));
                    }
                } else {
                    soLoadService3 = this.this$0;
                    it = list.iterator();
                    while (it.hasNext()) {
                        soLoadService3.downloadProgressMap.put((String) it.next(), Boxing.d(50));
                    }
                }
                cVar = gz.c.f64038a;
                cVar.a(fileD);
                if (!cVar.h(fileF, fileD)) {
                    soLoadService5 = this.this$0;
                    for (String str4 : list) {
                        linkedHashMap.put(str4, "ZIP解压失败");
                        soLoadService5.downloadProgressMap.put(str4, Boxing.d(-1));
                    }
                    Log.e("SoLoadService", "ZIP解压失败: " + fileF.getAbsolutePath());
                    return new SoLoadService.b(arrayList, linkedHashMap, false, 4, null);
                }
                soLoadService4 = this.this$0;
                it2 = list.iterator();
                while (it2.hasNext()) {
                    soLoadService4.downloadProgressMap.put((String) it2.next(), Boxing.d(75));
                }
            }
            soLoadService = this.this$0;
            for (String str5 : list) {
                t1Var = soLoadService.currentJob;
                if (t1Var == null && t1Var.isCancelled()) {
                    file = new File(fileD, str5);
                    if (file.exists()) {
                        strA = gz.f.f64042a.a(file);
                        if (strA == null) {
                            soLoadService.loadedSoSet.add(str5);
                            arrayList.add(str5);
                            soLoadService.downloadProgressMap.put(str5, Boxing.d(100));
                            lg.a.C0828a.f(lg.a.f68839a, "SoLoadService", "SO加载成功: " + str5, false, 4, null);
                        } else {
                            linkedHashMap.put(str5, strA);
                            soLoadService.downloadProgressMap.put(str5, Boxing.d(-1));
                            lg.a.C0828a.l(lg.a.f68839a, "SoLoadService", "SO加载失败: " + str5 + ", 错误: " + strA, false, 4, null);
                        }
                    } else {
                        linkedHashMap.put(str5, "SO文件不存在");
                        soLoadService.downloadProgressMap.put(str5, Boxing.d(-1));
                        lg.a.C0828a.l(lg.a.f68839a, "SoLoadService", "SO文件不存在: " + file.getAbsolutePath(), false, 4, null);
                    }
                }
            }
            method_name = this.$soZipInfo.getMethod_name();
            if (method_name != null) {
                soZipInfo = this.$soZipInfo;
                soLoadService2 = this.this$0;
                if (!StringsKt.q0(method_name) && !arrayList.isEmpty()) {
                    Log.w("SoLoadService", "准备调用初始化方法: " + method_name + " input=" + soZipInfo.getInput());
                    str = (String) CollectionsKt.v0(so_names);
                    if (str == null) {
                        str = "";
                    }
                    if (!soLoadService2.q(method_name, soZipInfo.getInput(), str)) {
                        linkedHashMap.put(str, "init_method_fail");
                    }
                }
            }
            return new SoLoadService.b(arrayList, linkedHashMap, false, 4, null);
        }
        lg.a.C0828a.f(lg.a.f68839a, "SoLoadService", "ZIP文件不存在，需要下载: " + this.$soZipInfo.getZip_url(), false, 4, null);
        z10 = true;
        if (z10) {
            if (list instanceof Collection) {
                it6 = list.iterator();
                while (true) {
                    if (it6.hasNext()) {
                        file2 = new File(fileD, (String) it6.next());
                        if (file2.exists()) {
                        }
                        z11 = false;
                    } else {
                        z11 = true;
                    }
                }
            } else {
                it6 = list.iterator();
                while (true) {
                    if (it6.hasNext()) {
                        file2 = new File(fileD, (String) it6.next());
                        if (file2.exists()) {
                        }
                        z11 = false;
                    } else {
                        z11 = true;
                    }
                }
            }
            if (z11) {
                lg.a.C0828a.f(lg.a.f68839a, "SoLoadService", "所有SO文件已存在，跳过下载和解压，直接复用", false, 4, null);
                soLoadService11 = this.this$0;
                it7 = list.iterator();
                while (it7.hasNext()) {
                    soLoadService11.downloadProgressMap.put((String) it7.next(), Boxing.d(75));
                }
            }
        } else {
            z11 = false;
        }
        if (!z11) {
            if (z10) {
                soLoadService6 = this.this$0;
                it3 = list.iterator();
                while (it3.hasNext()) {
                    soLoadService6.downloadProgressMap.put((String) it3.next(), Boxing.d(10));
                }
                if (!eVar.b(this.$soZipInfo.getZip_url(), fileF)) {
                    soLoadService10 = this.this$0;
                    while (r2.hasNext()) {
                        linkedHashMap.put(str2, "ZIP下载失败");
                        soLoadService10.downloadProgressMap.put(str2, Boxing.d(-1));
                    }
                    lg.a.C0828a.l(lg.a.f68839a, "SoLoadService", "ZIP下载失败: " + this.$soZipInfo.getZip_url(), false, 4, null);
                    return new SoLoadService.b(arrayList, linkedHashMap, false, 4, null);
                }
                soLoadService7 = this.this$0;
                it4 = list.iterator();
                while (it4.hasNext()) {
                    soLoadService7.downloadProgressMap.put((String) it4.next(), Boxing.d(30));
                }
                md5 = this.$soZipInfo.getMd5();
                if (md5 != null) {
                    z12 = true;
                } else {
                    z12 = true;
                }
                if (!z12) {
                    dVar = gz.d.f64039a;
                    strA2 = dVar.a(fileF);
                    lg.a.C0828a.f(lg.a.f68839a, "SoLoadService", "ZIP文件MD5: downloadedMd5=" + strA2 + ", soZipInfoMd5=" + this.$soZipInfo.getMd5(), false, 4, null);
                    if (!dVar.b(strA2, this.$soZipInfo.getMd5())) {
                        gz.c.f64038a.b(fileF);
                        soLoadService9 = this.this$0;
                        while (r2.hasNext()) {
                            linkedHashMap.put(str3, "ZIP MD5校验失败");
                            soLoadService9.downloadProgressMap.put(str3, Boxing.d(-1));
                        }
                        lg.a.C0828a.l(lg.a.f68839a, "SoLoadService", "ZIP文件MD5校验失败: " + this.$soZipInfo.getZip_url(), false, 4, null);
                        return new SoLoadService.b(arrayList, linkedHashMap, false, 4, null);
                    }
                }
                soLoadService8 = this.this$0;
                it5 = list.iterator();
                while (it5.hasNext()) {
                    soLoadService8.downloadProgressMap.put((String) it5.next(), Boxing.d(50));
                }
            } else {
                soLoadService3 = this.this$0;
                it = list.iterator();
                while (it.hasNext()) {
                    soLoadService3.downloadProgressMap.put((String) it.next(), Boxing.d(50));
                }
            }
            cVar = gz.c.f64038a;
            cVar.a(fileD);
            if (!cVar.h(fileF, fileD)) {
                soLoadService5 = this.this$0;
                while (r2.hasNext()) {
                    linkedHashMap.put(str4, "ZIP解压失败");
                    soLoadService5.downloadProgressMap.put(str4, Boxing.d(-1));
                }
                Log.e("SoLoadService", "ZIP解压失败: " + fileF.getAbsolutePath());
                return new SoLoadService.b(arrayList, linkedHashMap, false, 4, null);
            }
            soLoadService4 = this.this$0;
            it2 = list.iterator();
            while (it2.hasNext()) {
                soLoadService4.downloadProgressMap.put((String) it2.next(), Boxing.d(75));
            }
        }
        soLoadService = this.this$0;
        while (r5.hasNext()) {
            t1Var = soLoadService.currentJob;
            if (t1Var == null && t1Var.isCancelled()) {
                file = new File(fileD, str5);
                if (file.exists()) {
                    linkedHashMap.put(str5, "SO文件不存在");
                    soLoadService.downloadProgressMap.put(str5, Boxing.d(-1));
                    lg.a.C0828a.l(lg.a.f68839a, "SoLoadService", "SO文件不存在: " + file.getAbsolutePath(), false, 4, null);
                } else {
                    strA = gz.f.f64042a.a(file);
                    if (strA == null) {
                        soLoadService.loadedSoSet.add(str5);
                        arrayList.add(str5);
                        soLoadService.downloadProgressMap.put(str5, Boxing.d(100));
                        lg.a.C0828a.f(lg.a.f68839a, "SoLoadService", "SO加载成功: " + str5, false, 4, null);
                    } else {
                        linkedHashMap.put(str5, strA);
                        soLoadService.downloadProgressMap.put(str5, Boxing.d(-1));
                        lg.a.C0828a.l(lg.a.f68839a, "SoLoadService", "SO加载失败: " + str5 + ", 错误: " + strA, false, 4, null);
                    }
                }
            }
        }
        method_name = this.$soZipInfo.getMethod_name();
        if (method_name != null) {
            soZipInfo = this.$soZipInfo;
            soLoadService2 = this.this$0;
            if (!StringsKt.q0(method_name)) {
                Log.w("SoLoadService", "准备调用初始化方法: " + method_name + " input=" + soZipInfo.getInput());
                str = (String) CollectionsKt.v0(so_names);
                if (str == null) {
                    str = "";
                }
                if (!soLoadService2.q(method_name, soZipInfo.getInput(), str)) {
                    linkedHashMap.put(str, "init_method_fail");
                }
            }
        }
        return new SoLoadService.b(arrayList, linkedHashMap, false, 4, null);
    }
}
