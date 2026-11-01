package com.transsion.transfer.impl.server.service;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.transsion.transfer.androidasync.http.Headers;
import com.transsion.transfer.androidasync.http.Multimap;
import com.transsion.transfer.androidasync.http.server.MalformedRangeException;
import com.transsion.transfer.androidasync.http.server.q;
import com.transsion.transfer.impl.TaskState;
import com.transsion.transfer.impl.i;
import java.io.File;
import java.util.List;
import java.util.ListIterator;
import kotlin.Triple;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.Regex;

/* JADX INFO: loaded from: classes6.dex */
public final class a implements q {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final C0682a f55793c = new C0682a(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f55794d = "Transfer-" + a.class.getName();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.transsion.transfer.impl.g f55795a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private i f55796b;

    /* JADX INFO: renamed from: com.transsion.transfer.impl.server.service.a$a, reason: collision with other inner class name */
    public static final class C0682a {
        private C0682a() {
        }

        public /* synthetic */ C0682a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a() {
            return a.f55794d;
        }
    }

    public static final class b implements bv.e {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f55798b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f55799c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ Ref.LongRef f55800d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ long f55801e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ Ref.LongRef f55802f;

        b(String str, String str2, Ref.LongRef longRef, long j11, Ref.LongRef longRef2) {
            this.f55798b = str;
            this.f55799c = str2;
            this.f55800d = longRef;
            this.f55801e = j11;
            this.f55802f = longRef2;
        }

        @Override // bv.e
        public void a(long j11, long j12) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            Ref.LongRef longRef = this.f55802f;
            if (jCurrentTimeMillis - longRef.element < 2000) {
                return;
            }
            longRef.element = System.currentTimeMillis();
            i iVar = a.this.f55796b;
            String str = this.f55798b;
            String str2 = this.f55799c;
            long j13 = this.f55800d.element;
            iVar.h(str, str2, j11 + j13, j12 + j13);
        }

        @Override // bv.e
        public void b(Exception exc) {
            a.f55793c.a();
            String message = exc != null ? exc.getMessage() : null;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("transfer file onComplete: ");
            sb2.append(message);
            i iVar = a.this.f55796b;
            String str = this.f55798b;
            String str2 = this.f55799c;
            TaskState taskState = exc == null ? TaskState.FINISH : TaskState.ERROR;
            long j11 = this.f55801e;
            iVar.K(str, str2, taskState, j11, j11);
        }
    }

    public a(com.transsion.transfer.impl.g fileHandler, i listener) {
        Intrinsics.h(fileHandler, "fileHandler");
        Intrinsics.h(listener, "listener");
        this.f55795a = fileHandler;
        this.f55796b = listener;
    }

    private final long d(com.transsion.transfer.androidasync.http.server.b bVar) {
        String strC;
        List listL;
        List listL2;
        Headers headers;
        if (bVar == null || (headers = bVar.getHeaders()) == null || (strC = headers.c("Range")) == null) {
            strC = "";
        }
        if (strC.length() <= 0) {
            return 0L;
        }
        List<String> listSplit = new Regex(UrlUtils.EQUAL_MARK).split(strC, 0);
        if (!listSplit.isEmpty()) {
            ListIterator<String> listIterator = listSplit.listIterator(listSplit.size());
            while (true) {
                if (!listIterator.hasPrevious()) {
                    listL = CollectionsKt.l();
                    break;
                }
                if (listIterator.previous().length() != 0) {
                    listL = CollectionsKt.K0(listSplit, listIterator.nextIndex() + 1);
                    break;
                }
            }
        } else {
            listL = CollectionsKt.l();
            break;
        }
        String[] strArr = (String[]) listL.toArray(new String[0]);
        if (strArr.length != 2 || !Intrinsics.c("bytes", strArr[0])) {
            return 0L;
        }
        List<String> listSplit2 = new Regex("-").split(strArr[1], 0);
        if (!listSplit2.isEmpty()) {
            ListIterator<String> listIterator2 = listSplit2.listIterator(listSplit2.size());
            while (true) {
                if (!listIterator2.hasPrevious()) {
                    listL2 = CollectionsKt.l();
                    break;
                }
                if (listIterator2.previous().length() != 0) {
                    listL2 = CollectionsKt.K0(listSplit2, listIterator2.nextIndex() + 1);
                    break;
                }
            }
        } else {
            listL2 = CollectionsKt.l();
            break;
        }
        String[] strArr2 = (String[]) listL2.toArray(new String[0]);
        try {
            if (strArr2.length > 2) {
                throw new MalformedRangeException();
            }
            if (TextUtils.isEmpty(strArr2[0])) {
                return 0L;
            }
            return Long.parseLong(strArr2[0]);
        } catch (Exception unused) {
            return 0L;
        }
    }

    @Override // com.transsion.transfer.androidasync.http.server.q
    public void b(com.transsion.transfer.androidasync.http.server.b bVar, com.transsion.transfer.androidasync.http.server.d dVar) {
        com.transsion.transfer.androidasync.http.server.d dVarC;
        Multimap multimapH;
        String string;
        Ref.LongRef longRef = new Ref.LongRef();
        iv.c.a aVar = iv.c.f65619d;
        Triple tripleC = aVar.c(bVar != null ? bVar.getHeaders() : null);
        int iIntValue = ((Number) tripleC.getSecond()).intValue();
        String str = (String) tripleC.getThird();
        if (iIntValue < 1) {
            if (dVar != null) {
                dVar.send(aVar.a(-1, "protocol version compatible error", ""));
                return;
            }
            return;
        }
        String strA = (bVar == null || (multimapH = bVar.h()) == null || (string = multimapH.getString(OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_FILE)) == null) ? null : jv.a.a(string);
        File file = strA != null ? new File(strA) : null;
        long jD = d(bVar);
        long jLongValue = (file != null ? Long.valueOf(file.length()) : Integer.MAX_VALUE).longValue();
        Ref.LongRef longRef2 = new Ref.LongRef();
        longRef2.element = jD;
        if (file != null && file.exists()) {
            if (dVar != null) {
                dVar.n(file, new b(str, strA, longRef2, jLongValue, longRef));
                return;
            }
            return;
        }
        if (strA != null) {
            this.f55796b.K(str, strA, TaskState.NO_FILE, 0L, jLongValue);
        }
        String strA2 = aVar.a(-1, "File not found," + strA, "");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("createResponseJsonObj: ");
        sb2.append(strA2);
        if (dVar == null || (dVarC = dVar.c(TTAdConstant.DEEPLINK_FALLBACK_CODE)) == null) {
            return;
        }
        dVarC.send(strA2);
    }
}
