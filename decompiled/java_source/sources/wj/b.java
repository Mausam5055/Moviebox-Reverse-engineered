package wj;

import android.text.TextUtils;
import com.transsion.baselib.report.recent_event.ActionEvent;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f77693a = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final wj.a f77694b = new wj.a(30);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final HashMap f77695c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final HashMap f77696d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final HashMap f77697e;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final ActionEvent a(Map map, String str) {
            String str2 = (String) map.get("module_name");
            if (TextUtils.isEmpty(str2) || !b.f77695c.containsKey(str2)) {
                if (!TextUtils.equals(str, "Trending")) {
                    return null;
                }
                Integer num = (Integer) b.f77696d.get(str);
                return new ActionEvent(1, num != null ? num.intValue() : 0, f((String) map.get("post_id")), f((String) map.get("subject_id")), f((String) map.get("group_id")), 0, 0, 96, null);
            }
            Integer num2 = (Integer) b.f77696d.get(str);
            int iIntValue = num2 != null ? num2.intValue() : 0;
            String strF = f((String) map.get("post_id"));
            String strF2 = f((String) map.get("subject_id"));
            String strF3 = f((String) map.get("group_id"));
            HashMap map2 = b.f77695c;
            if (str2 == null) {
                str2 = "0";
            }
            return new ActionEvent(((Number) MapsKt.i(map2, str2)).intValue(), iIntValue, strF, strF2, strF3, 0, 0, 96, null);
        }

        private final ActionEvent b(Map map, String str) {
            if (TextUtils.equals(str, "postdetail")) {
                Integer num = (Integer) b.f77696d.get(str);
                return new ActionEvent(15, num != null ? num.intValue() : 0, f((String) map.get("post_id")), f((String) map.get("subject_id")), f((String) map.get("group_id")), 0, 0, 96, null);
            }
            if (!TextUtils.equals(str, "searchpage")) {
                return null;
            }
            Integer num2 = (Integer) b.f77696d.get(str);
            return new ActionEvent(19, num2 != null ? num2.intValue() : 0, "0", "0", "0", 0, 0, 96, null);
        }

        private final ActionEvent c(String str, Map map, String str2) {
            if (!b.f77696d.containsKey(str2)) {
                return null;
            }
            Integer num = (Integer) b.f77696d.get(str2);
            int iIntValue = num != null ? num.intValue() : 0;
            String strF = f((String) map.get("post_id"));
            String strF2 = f((String) map.get("subject_id"));
            String strF3 = f((String) map.get("group_id"));
            String str3 = (String) map.get("play_duration");
            int i11 = str3 != null ? Integer.parseInt(str3) : 0;
            String str4 = (String) map.get("completeCount");
            int i12 = str4 != null ? Integer.parseInt(str4) : 0;
            Integer num2 = (Integer) b.f77697e.get(str);
            if (num2 != null) {
                return new ActionEvent(num2.intValue(), iIntValue, strF, strF2, strF3, i11, i12);
            }
            return null;
        }

        private final String f(String str) {
            return (TextUtils.isEmpty(str) || str == null) ? "0" : str;
        }

        public final void d(String pageName, String event, Map map) {
            ActionEvent actionEventC;
            Intrinsics.h(pageName, "pageName");
            Intrinsics.h(event, "event");
            Intrinsics.h(map, "map");
            if (TextUtils.equals(event, "click")) {
                actionEventC = a(map, pageName);
            } else if (TextUtils.equals(event, "pt")) {
                actionEventC = b(map, pageName);
            } else {
                actionEventC = (TextUtils.equals(event, "video_play") || TextUtils.equals(event, "audio_play")) ? c(event, map, pageName) : null;
            }
            if (actionEventC != null) {
                b.f77694b.offer(actionEventC);
            }
        }

        public final Queue e() {
            return b.f77694b;
        }
    }

    static {
        HashMap map = new HashMap();
        f77695c = map;
        HashMap map2 = new HashMap();
        f77696d = map2;
        HashMap map3 = new HashMap();
        f77697e = map3;
        map.put("unknow", 0);
        map.put("like", 3);
        map.put("dislike", 4);
        map.put("want_to_see", 5);
        map.put("i_have_seen", 6);
        map.put("create_review", 7);
        map.put("copylink", 8);
        map.put("whatsup", 8);
        map.put("Telegram", 8);
        map.put("create_post", 9);
        map.put("checkin", 10);
        map.put("checkout", 11);
        map.put("download", 12);
        map.put("comment", 13);
        map.put("want_to_see_cancel", 17);
        map.put("searchpage", 19);
        map.put("search", 20);
        map.put("download_subject", 21);
        map2.put("default", 0);
        map2.put("Trending", 1);
        map2.put("roomdetail", 2);
        map2.put("subjectdetail", 3);
        map2.put("postdetail", 4);
        map3.put("click", 1);
        map3.put("audio_play", 2);
        map3.put("video_play", 2);
        map3.put("PT", 15);
    }
}
