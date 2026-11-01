package com.aliyun.liveshift.bean;

import com.aliyun.utils.JsonUtil;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class TimeLineInfo {
    private static final String TAG = "TimeLineInfo";
    public long end;
    public long start;

    public static List<TimeLineInfo> getInfoArrayFromJson(JSONArray jSONArray) {
        if (jSONArray == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int length = jSONArray.length();
        for (int i11 = 0; i11 < length; i11++) {
            try {
                TimeLineInfo infoFromJson = getInfoFromJson(jSONArray.getJSONObject(i11));
                if (infoFromJson != null) {
                    arrayList.add(infoFromJson);
                }
            } catch (JSONException unused) {
            }
        }
        return arrayList;
    }

    private static TimeLineInfo getInfoFromJson(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        TimeLineInfo timeLineInfo = new TimeLineInfo();
        timeLineInfo.start = JsonUtil.getLong(jSONObject, "start");
        timeLineInfo.end = JsonUtil.getLong(jSONObject, TtmlNode.END);
        return timeLineInfo;
    }
}
