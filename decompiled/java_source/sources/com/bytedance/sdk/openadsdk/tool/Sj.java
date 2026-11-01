package com.bytedance.sdk.openadsdk.tool;

import com.bytedance.sdk.component.utils.sU;
import com.bytedance.sdk.openadsdk.FilterWord;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class Sj {
    private static FilterWord Sj(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            FilterWord filterWord = new FilterWord();
            filterWord.setId(jSONObject.optString("id"));
            filterWord.setName(jSONObject.optString("name"));
            filterWord.setIsSelected(jSONObject.optBoolean("is_selected"));
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("options");
            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                for (int i11 = 0; i11 < jSONArrayOptJSONArray.length(); i11++) {
                    FilterWord filterWordSj = Sj(jSONArrayOptJSONArray.optJSONObject(i11));
                    if (filterWordSj != null && filterWordSj.isValid()) {
                        filterWord.addOption(filterWordSj);
                    }
                }
            }
            return filterWord;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String Sj(List<FilterWord> list) {
        if (list == null) {
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        Iterator<FilterWord> it = list.iterator();
        while (it.hasNext()) {
            JSONObject jSONObjectSj = Sj(it.next());
            if (jSONObjectSj != null) {
                jSONArray.put(jSONObjectSj);
            }
        }
        return jSONArray.toString();
    }

    public static List<FilterWord> Sj(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            JSONArray jSONArray = new JSONArray(str);
            for (int i11 = 0; i11 < jSONArray.length(); i11++) {
                FilterWord filterWordSj = Sj(jSONArray.optJSONObject(i11));
                if (filterWordSj != null && filterWordSj.isValid()) {
                    arrayList.add(filterWordSj);
                }
            }
        } catch (JSONException e11) {
            sU.sP("MaterialMetaTools", e11.getMessage());
        }
        return arrayList;
    }

    private static JSONObject Sj(FilterWord filterWord) {
        if (filterWord == null) {
            return null;
        }
        try {
            if (filterWord.isValid()) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("id", filterWord.getId());
                jSONObject.put("name", filterWord.getName());
                jSONObject.put("is_selected", filterWord.getIsSelected());
                if (filterWord.hasSecondOptions()) {
                    JSONArray jSONArray = new JSONArray();
                    Iterator<FilterWord> it = filterWord.getOptions().iterator();
                    while (it.hasNext()) {
                        jSONArray.put(Sj(it.next()));
                    }
                    if (jSONArray.length() > 0) {
                        jSONObject.put("options", jSONArray);
                    }
                }
                return jSONObject;
            }
        } catch (Throwable unused) {
        }
        return null;
    }
}
