package com.google.android.libraries.places.internal;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.bumptech.glide.integration.cronet.BufferQueue;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.foundation.download.database.DownloadModel;
import com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar;
import com.transsion.mpush.core.config.MsgShowStatus;
import java.io.IOException;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
final class zzbtw {
    private static final zzbwf zza;
    private static final zzbtt[] zzb;
    private static final Map zzc;

    static {
        zzbwe zzbweVar = zzbwf.zza;
        zza = zzbwe.zza(":");
        zzbtt zzbttVar = new zzbtt(zzbtt.zze, zzbwe.zza(""));
        zzbwf zzbwfVar = zzbtt.zzb;
        zzbtt zzbttVar2 = new zzbtt(zzbwfVar, zzbwe.zza("GET"));
        zzbtt zzbttVar3 = new zzbtt(zzbwfVar, zzbwe.zza("POST"));
        zzbwf zzbwfVar2 = zzbtt.zzc;
        zzbtt zzbttVar4 = new zzbtt(zzbwfVar2, zzbwe.zza("/"));
        zzbtt zzbttVar5 = new zzbtt(zzbwfVar2, zzbwe.zza("/index.html"));
        zzbwf zzbwfVar3 = zzbtt.zzd;
        zzbtt zzbttVar6 = new zzbtt(zzbwfVar3, zzbwe.zza("http"));
        zzbtt zzbttVar7 = new zzbtt(zzbwfVar3, zzbwe.zza("https"));
        zzbwf zzbwfVar4 = zzbtt.zza;
        zzb = new zzbtt[]{zzbttVar, zzbttVar2, zzbttVar3, zzbttVar4, zzbttVar5, zzbttVar6, zzbttVar7, new zzbtt(zzbwfVar4, zzbwe.zza(MsgShowStatus.STATUS_OK)), new zzbtt(zzbwfVar4, zzbwe.zza("204")), new zzbtt(zzbwfVar4, zzbwe.zza("206")), new zzbtt(zzbwfVar4, zzbwe.zza("304")), new zzbtt(zzbwfVar4, zzbwe.zza("400")), new zzbtt(zzbwfVar4, zzbwe.zza("404")), new zzbtt(zzbwfVar4, zzbwe.zza("500")), new zzbtt("accept-charset", ""), new zzbtt("accept-encoding", "gzip, deflate"), new zzbtt("accept-language", ""), new zzbtt("accept-ranges", ""), new zzbtt("accept", ""), new zzbtt("access-control-allow-origin", ""), new zzbtt("age", ""), new zzbtt("allow", ""), new zzbtt("authorization", ""), new zzbtt("cache-control", ""), new zzbtt("content-disposition", ""), new zzbtt(BufferQueue.CONTENT_ENCODING, ""), new zzbtt("content-language", ""), new zzbtt(BufferQueue.CONTENT_LENGTH, ""), new zzbtt("content-location", ""), new zzbtt("content-range", ""), new zzbtt("content-type", ""), new zzbtt("cookie", ""), new zzbtt("date", ""), new zzbtt(DownloadModel.ETAG, ""), new zzbtt("expect", ""), new zzbtt("expires", ""), new zzbtt("from", ""), new zzbtt("host", ""), new zzbtt("if-match", ""), new zzbtt("if-modified-since", ""), new zzbtt("if-none-match", ""), new zzbtt("if-range", ""), new zzbtt("if-unmodified-since", ""), new zzbtt("last-modified", ""), new zzbtt("link", ""), new zzbtt(RequestParameters.SUBRESOURCE_LOCATION, ""), new zzbtt("max-forwards", ""), new zzbtt("proxy-authenticate", ""), new zzbtt("proxy-authorization", ""), new zzbtt("range", ""), new zzbtt(RequestParameters.SUBRESOURCE_REFERER, ""), new zzbtt(ToolBar.REFRESH, ""), new zzbtt("retry-after", ""), new zzbtt(TmcConstants.CHANNEL_REQUEST_SERVER, ""), new zzbtt("set-cookie", ""), new zzbtt("strict-transport-security", ""), new zzbtt("transfer-encoding", ""), new zzbtt("user-agent", ""), new zzbtt("vary", ""), new zzbtt("via", ""), new zzbtt("www-authenticate", "")};
        LinkedHashMap linkedHashMap = new LinkedHashMap(61);
        int i11 = 0;
        while (true) {
            zzbtt[] zzbttVarArr = zzb;
            int length = zzbttVarArr.length;
            if (i11 >= 61) {
                zzc = Collections.unmodifiableMap(linkedHashMap);
                return;
            } else {
                if (!linkedHashMap.containsKey(zzbttVarArr[i11].zzh)) {
                    linkedHashMap.put(zzbttVarArr[i11].zzh, Integer.valueOf(i11));
                }
                i11++;
            }
        }
    }

    static /* bridge */ /* synthetic */ zzbwf zzc(zzbwf zzbwfVar) throws IOException {
        int iZzc = zzbwfVar.zzc();
        for (int i11 = 0; i11 < iZzc; i11++) {
            byte bZza = zzbwfVar.zza(i11);
            if (bZza >= 65 && bZza <= 90) {
                throw new IOException("PROTOCOL_ERROR response malformed: mixed case name: ".concat(zzbwfVar.zzf()));
            }
        }
        return zzbwfVar;
    }
}
