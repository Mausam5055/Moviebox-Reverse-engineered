package jk;

import com.cloud.tmc.integration.event.EventConstants;
import com.transsion.commercializationapi.IInterceptReportApi;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class b implements IInterceptReportApi {
    @Override // com.transsion.commercializationapi.IInterceptReportApi
    public void a() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(EventConstants.KEY_ACTION, "member_guide_dialog_click_close");
        com.transsion.baselib.helper.a.f43262a.b("download_intercept", linkedHashMap);
    }

    @Override // com.transsion.commercializationapi.IInterceptReportApi
    public void b() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(EventConstants.KEY_ACTION, "download_page_manager_btn_click");
        com.transsion.baselib.helper.a.f43262a.b("download_intercept", linkedHashMap);
    }

    @Override // com.transsion.commercializationapi.IInterceptReportApi
    public void c() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(EventConstants.KEY_ACTION, "member_guide_dialog_show");
        com.transsion.baselib.helper.a.f43262a.b("download_intercept", linkedHashMap);
    }

    @Override // com.transsion.commercializationapi.IInterceptReportApi
    public void d() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(EventConstants.KEY_ACTION, "member_guide_dialog_click_get_ad");
        com.transsion.baselib.helper.a.f43262a.b("download_intercept", linkedHashMap);
    }

    @Override // com.transsion.commercializationapi.IInterceptReportApi
    public void e() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(EventConstants.KEY_ACTION, "download_task_dialog_resume_all_click");
        com.transsion.baselib.helper.a.f43262a.b("download_intercept", linkedHashMap);
    }

    @Override // com.transsion.commercializationapi.IInterceptReportApi
    public void f() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(EventConstants.KEY_ACTION, "download_task_dialog_pause_all_click");
        com.transsion.baselib.helper.a.f43262a.b("download_intercept", linkedHashMap);
    }

    @Override // com.transsion.commercializationapi.IInterceptReportApi
    public void g() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(EventConstants.KEY_ACTION, "download_task_dialog_at_a_time_click");
        com.transsion.baselib.helper.a.f43262a.b("download_intercept", linkedHashMap);
    }

    @Override // com.transsion.commercializationapi.IInterceptReportApi
    public void h() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(EventConstants.KEY_ACTION, "get_ad_free_btn_click");
        com.transsion.baselib.helper.a.f43262a.b("download_intercept", linkedHashMap);
    }
}
