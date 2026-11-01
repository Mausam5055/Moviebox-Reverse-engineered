package com.transsion.search.widget;

import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.moviedetailapi.bean.Group;
import com.transsion.moviedetailapi.bean.PlayUrl;
import com.transsion.moviedetailapi.bean.Staff;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.search.bean.GroupInfo;
import com.transsion.search.bean.HotSubject;
import com.transsion.search.bean.SuggestEntity;
import com.transsion.search.bean.VerticalRank;
import com.transsion.search.fragment.BaseSearchMainFragment;
import com.transsion.search.fragment.hot.SearchHotFragment;
import hj.i;
import java.util.HashMap;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f52270a = new a(null);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(Group group, int i11, long j11, String str, String str2, String str3, String sugSource) {
            String groupId;
            Intrinsics.h(sugSource, "sugSource");
            HashMap map = new HashMap();
            map.put("event_type", "result_item_browse");
            String str4 = "";
            if (str == null) {
                str = "";
            }
            map.put("keyword", str);
            if (str2 == null) {
                str2 = "";
            }
            map.put("search_from", str2);
            map.put("index", String.valueOf(i11));
            map.put("tabId", String.valueOf(str3));
            map.put("duration", String.valueOf(j11));
            map.put("search_id", BaseSearchMainFragment.INSTANCE.a());
            if (group != null && (groupId = group.getGroupId()) != null) {
                str4 = groupId;
            }
            map.put("group_id", str4);
            map.put("hasJoin", String.valueOf(group != null ? group.getHasJoin() : null));
            map.put("sug_source", sugSource);
            com.transsion.baselib.helper.a.f43262a.e("searchresult", map);
        }

        public final void b(Group group, int i11, String str, String str2, String str3, String sugSource) {
            String groupId;
            Intrinsics.h(sugSource, "sugSource");
            HashMap map = new HashMap();
            map.put("event_type", "result_item_click");
            String str4 = "";
            if (str == null) {
                str = "";
            }
            map.put("keyword", str);
            if (str2 == null) {
                str2 = "";
            }
            map.put("search_from", str2);
            map.put("index", String.valueOf(i11));
            map.put("tabId", String.valueOf(str3));
            map.put("search_id", BaseSearchMainFragment.INSTANCE.a());
            if (group != null && (groupId = group.getGroupId()) != null) {
                str4 = groupId;
            }
            map.put("group_id", str4);
            map.put("hasJoin", String.valueOf(group != null ? group.getHasJoin() : null));
            map.put("sug_source", sugSource);
            com.transsion.baselib.helper.a.f43262a.f("searchresult", map);
        }

        public final void c(String sugSource) {
            Intrinsics.h(sugSource, "sugSource");
            com.transsion.baselib.helper.a.f43262a.f(SearchHotFragment.PAGE_NAME, MapsKt.l(TuplesKt.a("event_type", "history_delete"), TuplesKt.a("search_id", BaseSearchMainFragment.INSTANCE.a()), TuplesKt.a("sug_source", sugSource)));
        }

        public final void d(boolean z10, String sugSource) {
            Intrinsics.h(sugSource, "sugSource");
            HashMap map = new HashMap();
            map.put("isExpand", String.valueOf(z10));
            map.put("event_type", "history_expand");
            map.put("search_id", BaseSearchMainFragment.INSTANCE.a());
            map.put("sug_source", sugSource);
            com.transsion.baselib.helper.a.f43262a.f(SearchHotFragment.PAGE_NAME, map);
        }

        public final void e(String str, int i11, String sugSource) {
            Intrinsics.h(sugSource, "sugSource");
            HashMap map = new HashMap();
            if (str == null) {
                str = "";
            }
            map.put("keyword", str);
            map.put("index", String.valueOf(i11));
            map.put("event_type", "history_browse");
            map.put("search_id", BaseSearchMainFragment.INSTANCE.a());
            map.put("sug_source", sugSource);
            com.transsion.baselib.helper.a.f43262a.a(SearchHotFragment.PAGE_NAME, map);
        }

        public final void f(String keyWord, int i11, String sugSource) {
            Intrinsics.h(keyWord, "keyWord");
            Intrinsics.h(sugSource, "sugSource");
            HashMap map = new HashMap();
            map.put("keyword", keyWord);
            map.put("index", String.valueOf(i11));
            map.put("event_type", "history_click");
            map.put("search_id", BaseSearchMainFragment.INSTANCE.a());
            map.put("sug_source", sugSource);
            com.transsion.baselib.helper.a.f43262a.f(SearchHotFragment.PAGE_NAME, map);
        }

        public final void g(String str, int i11, String sugSource) {
            Intrinsics.h(sugSource, "sugSource");
            HashMap map = new HashMap();
            if (str == null) {
                str = "";
            }
            map.put("keyword", str);
            map.put("index", String.valueOf(i11));
            map.put("event_type", "hot_word_browse");
            map.put("search_id", BaseSearchMainFragment.INSTANCE.a());
            map.put("sug_source", sugSource);
            com.transsion.baselib.helper.a.f43262a.e(SearchHotFragment.PAGE_NAME, map);
        }

        public final void h(String keyword, int i11, String sugSource) {
            Intrinsics.h(keyword, "keyword");
            Intrinsics.h(sugSource, "sugSource");
            HashMap map = new HashMap();
            map.put("keyword", keyword);
            map.put("index", String.valueOf(i11));
            map.put("event_type", "hot_word_click");
            map.put("search_id", BaseSearchMainFragment.INSTANCE.a());
            map.put("sug_source", sugSource);
            com.transsion.baselib.helper.a.f43262a.f(SearchHotFragment.PAGE_NAME, map);
        }

        public final void i(String str, String str2, String sugSource) {
            Intrinsics.h(sugSource, "sugSource");
            HashMap map = new HashMap();
            if (str == null) {
                str = "";
            }
            map.put("keyword", str);
            if (str2 == null) {
                str2 = "";
            }
            map.put("search_from", str2);
            map.put("event_type", "result_empty");
            map.put("search_id", BaseSearchMainFragment.INSTANCE.a());
            map.put("sug_source", sugSource);
            com.transsion.baselib.helper.a.f43262a.e("searchresult", map);
        }

        public final void j(VerticalRank verticalRank, int i11, long j11, String str, String str2, String str3, String sugSource) {
            String title;
            Intrinsics.h(sugSource, "sugSource");
            HashMap map = new HashMap();
            map.put("event_type", "result_item_browse");
            String str4 = "";
            if (str == null) {
                str = "";
            }
            map.put("keyword", str);
            if (str2 == null) {
                str2 = "";
            }
            map.put("search_from", str2);
            map.put("index", String.valueOf(i11));
            map.put("tabId", String.valueOf(str3));
            map.put("duration", String.valueOf(j11));
            map.put("search_id", BaseSearchMainFragment.INSTANCE.a());
            if (verticalRank != null && (title = verticalRank.getTitle()) != null) {
                str4 = title;
            }
            map.put("rank_title", str4);
            map.put("sug_source", sugSource);
            com.transsion.baselib.helper.a.f43262a.e("searchresult", map);
        }

        public final void k(VerticalRank verticalRank, int i11, String str, String str2, String str3, String sugSource) {
            String title;
            Intrinsics.h(sugSource, "sugSource");
            HashMap map = new HashMap();
            map.put("event_type", "result_item_click");
            String str4 = "";
            if (str == null) {
                str = "";
            }
            map.put("keyword", str);
            if (str2 == null) {
                str2 = "";
            }
            map.put("search_from", str2);
            map.put("index", String.valueOf(i11));
            map.put("tabId", String.valueOf(str3));
            map.put("search_id", BaseSearchMainFragment.INSTANCE.a());
            if (verticalRank != null && (title = verticalRank.getTitle()) != null) {
                str4 = title;
            }
            map.put("rank_title", str4);
            map.put("sug_source", sugSource);
            com.transsion.baselib.helper.a.f43262a.f("searchresult", map);
        }

        public final void l(GroupInfo group, int i11, String parentCategory, int i12, boolean z10, String sugSource) {
            Intrinsics.h(group, "group");
            Intrinsics.h(parentCategory, "parentCategory");
            Intrinsics.h(sugSource, "sugSource");
            HashMap map = new HashMap();
            map.put("event_type", "hot_rank_browse");
            map.put("group_id", group.getGroupId());
            map.put("ops", group.getOps());
            map.put("index", String.valueOf(i11));
            map.put("lowMemoryDevice", String.valueOf(z10));
            map.put("parentTitle", parentCategory);
            map.put("parentIndex", String.valueOf(i12));
            map.put("search_id", BaseSearchMainFragment.INSTANCE.a());
            map.put("sug_source", sugSource);
            com.transsion.baselib.helper.a.f43262a.a(SearchHotFragment.PAGE_NAME, map);
        }

        public final void m(GroupInfo group, int i11, String parentCategory, int i12, boolean z10, String sugSource) {
            Intrinsics.h(group, "group");
            Intrinsics.h(parentCategory, "parentCategory");
            Intrinsics.h(sugSource, "sugSource");
            HashMap map = new HashMap();
            map.put("event_type", "hot_rank_click");
            map.put("group_id", group.getGroupId());
            map.put("index", String.valueOf(i11));
            map.put("ops", group.getOps());
            map.put("lowMemoryDevice", String.valueOf(z10));
            map.put("parentTitle", parentCategory);
            map.put("parentIndex", String.valueOf(i12));
            map.put("search_id", BaseSearchMainFragment.INSTANCE.a());
            map.put("sug_source", sugSource);
            com.transsion.baselib.helper.a.f43262a.f(SearchHotFragment.PAGE_NAME, map);
        }

        public final void n(HotSubject hotSubject, int i11, String parentCategory, int i12, boolean z10, String sugSource) {
            Intrinsics.h(hotSubject, "hotSubject");
            Intrinsics.h(parentCategory, "parentCategory");
            Intrinsics.h(sugSource, "sugSource");
            HashMap map = new HashMap();
            map.put("event_type", "hot_rank_browse");
            String subjectId = hotSubject.getSubjectId();
            if (subjectId == null) {
                subjectId = "";
            }
            map.put("subject_id", subjectId);
            map.put("index", String.valueOf(i11));
            map.put("subject_type", String.valueOf(hotSubject.getSubjectType()));
            String ops = hotSubject.getOps();
            map.put("ops", ops != null ? ops : "");
            map.put("lowMemoryDevice", String.valueOf(z10));
            map.put("parentTitle", parentCategory);
            map.put("parentIndex", String.valueOf(i12));
            map.put("search_id", BaseSearchMainFragment.INSTANCE.a());
            map.put("sug_source", sugSource);
            com.transsion.baselib.helper.a.f43262a.a(SearchHotFragment.PAGE_NAME, map);
        }

        public final void o(HotSubject hotSubject, int i11, String parentCategory, int i12, boolean z10, String sugSource) {
            Intrinsics.h(hotSubject, "hotSubject");
            Intrinsics.h(parentCategory, "parentCategory");
            Intrinsics.h(sugSource, "sugSource");
            HashMap map = new HashMap();
            map.put("event_type", "hot_rank_click");
            String subjectId = hotSubject.getSubjectId();
            if (subjectId == null) {
                subjectId = "";
            }
            map.put("subject_id", subjectId);
            map.put("index", String.valueOf(i11));
            map.put("subject_type", String.valueOf(hotSubject.getSubjectType()));
            String ops = hotSubject.getOps();
            map.put("ops", ops != null ? ops : "");
            map.put("lowMemoryDevice", String.valueOf(z10));
            map.put("parentTitle", parentCategory);
            map.put("parentIndex", String.valueOf(i12));
            map.put("search_id", BaseSearchMainFragment.INSTANCE.a());
            map.put("sug_source", sugSource);
            com.transsion.baselib.helper.a.f43262a.f(SearchHotFragment.PAGE_NAME, map);
        }

        public final void p(String str, String str2, long j11, int i11, String sugSource) {
            Intrinsics.h(sugSource, "sugSource");
            HashMap map = new HashMap();
            map.put("event_type", "result_scroll_skip");
            if (str2 == null) {
                str2 = "";
            }
            map.put("keyword", str2);
            map.put("tabId", String.valueOf(str));
            map.put("skip_item", String.valueOf(j11));
            map.put("fromIndex", String.valueOf(i11));
            map.put("search_id", BaseSearchMainFragment.INSTANCE.a());
            map.put("sug_source", sugSource);
            com.transsion.baselib.helper.a.f43262a.f("searchresult", map);
        }

        public final void q(String keyword, String str, String sugSource) {
            Intrinsics.h(keyword, "keyword");
            Intrinsics.h(sugSource, "sugSource");
            if (str == null) {
                str = "";
            }
            com.transsion.baselib.helper.a.f43262a.b("searchresult", MapsKt.l(TuplesKt.a("search_from", str), TuplesKt.a("keyword", keyword), TuplesKt.a("event_type", "search"), TuplesKt.a("search_id", BaseSearchMainFragment.INSTANCE.a()), TuplesKt.a("sug_source", sugSource)));
        }

        public final void r(Staff staff, int i11, long j11, String str, String str2, String str3, String sugSource) {
            String staffId;
            String ops;
            Intrinsics.h(sugSource, "sugSource");
            HashMap map = new HashMap();
            map.put("event_type", "result_item_browse");
            String str4 = "";
            if (str == null) {
                str = "";
            }
            map.put("keyword", str);
            if (str2 == null) {
                str2 = "";
            }
            map.put("search_from", str2);
            map.put("index", String.valueOf(i11));
            map.put("tabId", String.valueOf(str3));
            map.put("duration", String.valueOf(j11));
            map.put("search_id", BaseSearchMainFragment.INSTANCE.a());
            if (staff == null || (staffId = staff.getStaffId()) == null) {
                staffId = "";
            }
            map.put("staff_id", staffId);
            if (staff != null && (ops = staff.getOps()) != null) {
                str4 = ops;
            }
            map.put("ops", str4);
            map.put("sug_source", sugSource);
            com.transsion.baselib.helper.a.f43262a.e("searchresult", map);
        }

        public final void s(Staff staff, int i11, String str, String str2, String str3, String sugSource) {
            String staffId;
            String ops;
            Intrinsics.h(sugSource, "sugSource");
            HashMap map = new HashMap();
            map.put("event_type", "result_item_click");
            String str4 = "";
            if (str == null) {
                str = "";
            }
            map.put("keyword", str);
            if (str2 == null) {
                str2 = "";
            }
            map.put("search_from", str2);
            map.put("index", String.valueOf(i11));
            map.put("tabId", String.valueOf(str3));
            map.put("search_id", BaseSearchMainFragment.INSTANCE.a());
            if (staff == null || (staffId = staff.getStaffId()) == null) {
                staffId = "";
            }
            map.put("staff_id", staffId);
            if (staff != null && (ops = staff.getOps()) != null) {
                str4 = ops;
            }
            map.put("ops", str4);
            map.put("sug_source", sugSource);
            com.transsion.baselib.helper.a.f43262a.f("searchresult", map);
        }

        public final void t(Subject subject, int i11, long j11, String str, String str2, String str3, String sugSource) {
            String subjectId;
            String ops;
            String string;
            Intrinsics.h(sugSource, "sugSource");
            HashMap map = new HashMap();
            map.put("event_type", "result_item_browse");
            String str4 = "";
            if (str == null) {
                str = "";
            }
            map.put("keyword", str);
            if (str2 == null) {
                str2 = "";
            }
            map.put("search_from", str2);
            map.put("index", String.valueOf(i11));
            map.put("tabId", String.valueOf(str3));
            map.put("duration", String.valueOf(j11));
            map.put("search_id", BaseSearchMainFragment.INSTANCE.a());
            if (subject == null || (subjectId = subject.getSubjectId()) == null) {
                subjectId = "";
            }
            map.put("subject_id", subjectId);
            map.put("subject_type", String.valueOf(subject != null ? subject.getSubjectType() : null));
            if (subject == null || (ops = subject.getOps()) == null) {
                ops = "";
            }
            map.put("ops", ops);
            if (subject != null && (string = Integer.valueOf(subject.getSeason()).toString()) != null) {
                str4 = string;
            }
            map.put("season", str4);
            map.put("sug_source", sugSource);
            com.transsion.baselib.helper.a.f43262a.e("searchresult", map);
        }

        public final void u(Subject subject, int i11, String str, String str2, String str3, String sugSource) {
            String subjectId;
            String ops;
            String strValueOf;
            String string;
            PlayUrl playUrl;
            PlayUrl playUrl2;
            Intrinsics.h(sugSource, "sugSource");
            HashMap map = new HashMap();
            map.put("event_type", "result_item_click");
            String str4 = "";
            if (str == null) {
                str = "";
            }
            map.put("keyword", str);
            if (str2 == null) {
                str2 = "";
            }
            map.put("search_from", str2);
            map.put("index", String.valueOf(i11));
            map.put("tabId", String.valueOf(str3));
            map.put("search_id", BaseSearchMainFragment.INSTANCE.a());
            if (subject == null || (subjectId = subject.getSubjectId()) == null) {
                subjectId = "";
            }
            map.put("subject_id", subjectId);
            String urlType = null;
            map.put("subject_type", String.valueOf(subject != null ? subject.getSubjectType() : null));
            if (subject == null || (ops = subject.getOps()) == null) {
                ops = "";
            }
            map.put("ops", ops);
            String playUrl3 = (subject == null || (playUrl2 = subject.getPlayUrl()) == null) ? null : playUrl2.getPlayUrl();
            if (playUrl3 == null || playUrl3.length() == 0) {
                strValueOf = "NOT_URL";
            } else {
                if (subject != null && (playUrl = subject.getPlayUrl()) != null) {
                    urlType = playUrl.getUrlType();
                }
                strValueOf = String.valueOf(urlType);
            }
            map.put("jump_type", strValueOf);
            if (subject != null && (string = Integer.valueOf(subject.getSeason()).toString()) != null) {
                str4 = string;
            }
            map.put("season", str4);
            map.put("sug_source", sugSource);
            com.transsion.baselib.helper.a.f43262a.f("searchresult", map);
        }

        public final void v(SuggestEntity suggestEntity, Integer num, String keyWord, String str, String sugSource) {
            String word;
            String subjectId;
            VerticalRank verticalRank;
            String title;
            Subject subject;
            Intrinsics.h(keyWord, "keyWord");
            Intrinsics.h(sugSource, "sugSource");
            try {
                Result.Companion companion = Result.INSTANCE;
                HashMap map = new HashMap();
                map.put(NativeComponentConstants.KEY_COMPONENT_TYPE, String.valueOf(suggestEntity != null ? suggestEntity.getType() : null));
                map.put(MBridgeConstans.KEY_WORD, keyWord);
                String str2 = "";
                if (str == null) {
                    str = "";
                }
                map.put("ops", str);
                if (suggestEntity == null || (word = suggestEntity.getWord()) == null) {
                    word = "";
                }
                map.put(CampaignEx.JSON_KEY_TITLE, word);
                if (suggestEntity == null || (subject = suggestEntity.getSubject()) == null || (subjectId = subject.getSubjectId()) == null) {
                    subjectId = "";
                }
                map.put("subject_id", subjectId);
                if (suggestEntity != null && (verticalRank = suggestEntity.getVerticalRank()) != null && (title = verticalRank.getTitle()) != null) {
                    str2 = title;
                }
                map.put("word", str2);
                map.put("index", String.valueOf(num));
                map.put("search_id", BaseSearchMainFragment.INSTANCE.a());
                map.put("sug_source", sugSource);
                i.f64505a.D("search_suggest", map);
                Result.m454constructorimpl(Unit.f67061a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m454constructorimpl(ResultKt.a(th2));
            }
        }

        public final void w(SuggestEntity suggestEntity, int i11, String keyWord, String str, String sugSource) {
            String word;
            String subjectId;
            String title;
            Staff staff;
            String staffId;
            VerticalRank verticalRank;
            Subject subject;
            Intrinsics.h(keyWord, "keyWord");
            Intrinsics.h(sugSource, "sugSource");
            try {
                Result.Companion companion = Result.INSTANCE;
                HashMap map = new HashMap();
                map.put(NativeComponentConstants.KEY_COMPONENT_TYPE, String.valueOf(suggestEntity != null ? suggestEntity.getType() : null));
                map.put(MBridgeConstans.KEY_WORD, keyWord);
                String str2 = "";
                if (str == null) {
                    str = "";
                }
                map.put("ops", str);
                if (suggestEntity == null || (word = suggestEntity.getWord()) == null) {
                    word = "";
                }
                map.put(CampaignEx.JSON_KEY_TITLE, word);
                if (suggestEntity == null || (subject = suggestEntity.getSubject()) == null || (subjectId = subject.getSubjectId()) == null) {
                    subjectId = "";
                }
                map.put("subject_id", subjectId);
                if (suggestEntity == null || (verticalRank = suggestEntity.getVerticalRank()) == null || (title = verticalRank.getTitle()) == null) {
                    title = "";
                }
                map.put("word", title);
                if (suggestEntity != null && (staff = suggestEntity.getStaff()) != null && (staffId = staff.getStaffId()) != null) {
                    str2 = staffId;
                }
                map.put("staff_id", str2);
                map.put("index", String.valueOf(i11));
                map.put("search_id", BaseSearchMainFragment.INSTANCE.a());
                map.put("sug_source", sugSource);
                i.f64505a.p("search_suggest", map);
                Result.m454constructorimpl(Unit.f67061a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m454constructorimpl(ResultKt.a(th2));
            }
        }

        public final void x(String str, String str2, String sugSource) {
            Intrinsics.h(sugSource, "sugSource");
            HashMap map = new HashMap();
            if (str == null) {
                str = "";
            }
            map.put("keyword", str);
            map.put("tabId", String.valueOf(str2));
            map.put("event_type", "result_tab_click");
            map.put("search_id", BaseSearchMainFragment.INSTANCE.a());
            map.put("sug_source", sugSource);
            com.transsion.baselib.helper.a.f43262a.f("searchresult", map);
        }
    }
}
