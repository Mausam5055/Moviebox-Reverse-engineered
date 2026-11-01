package com.bytedance.sdk.openadsdk.core.settings;

import com.bytedance.sdk.component.utils.sU;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public interface HiB {
    public static final sP<JSONObject> Sj = new sP<JSONObject>() { // from class: com.bytedance.sdk.openadsdk.core.settings.HiB.1
        @Override // com.bytedance.sdk.openadsdk.core.settings.HiB.sP
        /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
        public JSONObject sP(String str) {
            try {
                return new JSONObject(str);
            } catch (Exception e11) {
                sU.Sj("ISettingsDataRepository", "", e11);
                return null;
            }
        }
    };
    public static final sP<Set<String>> sP = new sP<Set<String>>() { // from class: com.bytedance.sdk.openadsdk.core.settings.HiB.2
        @Override // com.bytedance.sdk.openadsdk.core.settings.HiB.sP
        /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
        public Set<String> sP(String str) {
            HashSet hashSet = new HashSet();
            try {
                JSONArray jSONArray = new JSONArray(str);
                int length = jSONArray.length();
                for (int i11 = 0; i11 < length; i11++) {
                    hashSet.add(jSONArray.getString(i11));
                }
            } catch (Exception e11) {
                sU.Sj("ISettingsDataRepository", "", e11);
            }
            return hashSet;
        }
    };

    public interface Sj {
        Sj Sj(String str);

        Sj Sj(String str, float f11);

        Sj Sj(String str, int i11);

        Sj Sj(String str, long j11);

        Sj Sj(String str, String str2);

        Sj Sj(String str, boolean z10);

        void Sj();
    }

    public interface sP<T> {
        T sP(String str);
    }

    void Sj(JSONObject jSONObject);
}
