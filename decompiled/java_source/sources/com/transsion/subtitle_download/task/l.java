package com.transsion.subtitle_download.task;

import android.app.Application;
import android.net.Uri;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.blankj.utilcode.util.Utils;
import com.transsion.subtitle_download.SubtitleDownloadManager;
import com.transsion.subtitle_download.db.SubtitleDownloadDatabase;
import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import java.io.File;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import okhttp3.Response;
import okhttp3.ResponseBody;

/* JADX INFO: loaded from: classes6.dex */
public final class l extends b {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit o(SubtitleDownloadTable subtitleDownloadTable, int i11) {
        SubtitleDownloadManager.f54998a.p(i11, subtitleDownloadTable);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit p(SubtitleDownloadTable subtitleDownloadTable, String str, l lVar) {
        subtitleDownloadTable.setZipPath(str);
        SubtitleDownloadDatabase.Companion companion = SubtitleDownloadDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        companion.b(applicationA).l0().f(subtitleDownloadTable);
        com.transsion.subtitle_download.utils.b.f55044a.a(lVar.l() + " --> disposeOnResponse() --> 压缩文件保存在 = " + str + " -- getSubtitleInfo = " + subtitleDownloadTable.getSubtitleInfo());
        return Unit.f67061a;
    }

    private final boolean q(SubtitleDownloadTable subtitleDownloadTable) {
        if (com.transsion.subtitle_download.utils.e.f55047a.j(subtitleDownloadTable)) {
            com.transsion.subtitle_download.utils.b.f55044a.a(l() + " --> parseFileCharsetName() --> 字幕压缩包下载成功 --> 开始解析字幕文件的编码格式 --> 成功 --> 保存状态到数据库");
            subtitleDownloadTable.setStatus(5);
            SubtitleDownloadDatabase.Companion companion = SubtitleDownloadDatabase.INSTANCE;
            Application applicationA = Utils.a();
            Intrinsics.g(applicationA, "getApp(...)");
            companion.b(applicationA).l0().f(subtitleDownloadTable);
            SubtitleDownloadManager.f54998a.n(subtitleDownloadTable);
            return true;
        }
        try {
            Result.Companion companion2 = Result.INSTANCE;
            String path = subtitleDownloadTable.getPath();
            if (path == null) {
                path = "";
            }
            Result.m454constructorimpl(Boolean.valueOf(new File(path).delete()));
        } catch (Throwable th2) {
            Result.Companion companion3 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
        h(subtitleDownloadTable, new RuntimeException(l() + " --> parseFileCharsetName() --> 解析字幕文件的编码格式失败 --> 删除字幕文件"));
        return false;
    }

    private final boolean r(SubtitleDownloadTable subtitleDownloadTable) {
        String str;
        boolean z10;
        SubtitleDownloadManager.f54998a.r(subtitleDownloadTable);
        String zipPath = subtitleDownloadTable.getZipPath();
        com.transsion.subtitle_download.utils.b bVar = com.transsion.subtitle_download.utils.b.f55044a;
        bVar.a(l() + " --> unGzZip() --> 字幕压缩包下载成功 --> 开始解压缩 .... zipPath = " + zipPath);
        if (subtitleDownloadTable.getEp() > 0) {
            str = b.f55016a.c() + File.separatorChar + subtitleDownloadTable.getSubjectFileName() + "_S" + subtitleDownloadTable.getSe() + "_E" + subtitleDownloadTable.getEp();
        } else {
            str = b.f55016a.c() + File.separatorChar + subtitleDownloadTable.getSubjectFileName();
        }
        com.transsion.subtitle_download.utils.e.f55047a.a(str);
        String str2 = str + File.separatorChar + subtitleDownloadTable.getName();
        boolean zA = com.transsion.subtitle_download.utils.a.f55043a.a(subtitleDownloadTable.getZipPath(), str2);
        if (zA) {
            bVar.a(l() + " --> unGzZip() --> 字幕压缩包下载成功 --> 开始解压缩 --> 解压缩成功");
            subtitleDownloadTable.setPath(str2);
            z10 = true;
        } else {
            h(subtitleDownloadTable, new RuntimeException(l() + " --> unGzZip() --> 字幕压缩文件解压失败"));
            z10 = false;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            new File(zipPath).delete();
            bVar.a(l() + " --> unGzZip() --> result = " + zA + " -- 无论成功失败，都删除压缩包 -- 这里修改成删除压缩缓存文件夹里面的所有文件");
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
        return z10;
    }

    @Override // com.transsion.subtitle_download.task.b
    public void i(Response response, final SubtitleDownloadTable dbBean) {
        String str;
        Intrinsics.h(response, "response");
        Intrinsics.h(dbBean, "dbBean");
        int iCode = response.code();
        if (200 > iCode || iCode >= 300) {
            h(dbBean, new RuntimeException(l() + " --> disposeOnResponse() --> 搜索字幕接口请求失败 --> response.code = " + response.code()));
            return;
        }
        String str2 = response.headers().get(HttpHeaders.CONTENT_DISPOSITION);
        List listS0 = str2 != null ? StringsKt.S0(str2, new String[]{"filename="}, false, 0, 6, null) : null;
        com.transsion.subtitle_download.utils.b bVar = com.transsion.subtitle_download.utils.b.f55044a;
        bVar.a(l() + " --> disposeOnResponse() --> 请求成功 --> response.code = " + response.code() + " -- list = " + listS0);
        if (listS0 == null || !(!listS0.isEmpty()) || listS0.size() <= 1) {
            str = b.f55016a.d() + File.separatorChar + Uri.decode(dbBean.getName()).hashCode();
        } else {
            String strReplace = new Regex("[\\\\/:*?\"<>|]").replace(Uri.decode((String) listS0.get(1)).toString(), "");
            str = b.f55016a.d() + File.separatorChar + strReplace;
        }
        final String str3 = str;
        ResponseBody responseBodyBody = response.body();
        if (j(response, str3, responseBodyBody != null ? responseBodyBody.getContentLength() : 0L, dbBean, new Function1() { // from class: com.transsion.subtitle_download.task.j
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return l.o(dbBean, ((Integer) obj).intValue());
            }
        }, new Function0() { // from class: com.transsion.subtitle_download.task.k
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return l.p(dbBean, str3, this);
            }
        }) && r(dbBean) && q(dbBean)) {
            bVar.b("--------------------------------------------------------------------");
        }
    }
}
