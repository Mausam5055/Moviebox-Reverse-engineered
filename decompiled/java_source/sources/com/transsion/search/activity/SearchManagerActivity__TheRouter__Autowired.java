package com.transsion.search.activity;

import androidx.annotation.Keep;
import bg.a;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.therouter.TheRouter;
import com.therouter.router.b;

/* JADX INFO: loaded from: classes5.dex */
@Keep
public class SearchManagerActivity__TheRouter__Autowired {
    public static final String TAG = "Created by kymjs, and APT Version is 1.3.0.";
    public static final String THEROUTER_APT_VERSION = "1.3.0";

    public static void autowiredInject(Object obj) {
        if (obj instanceof SearchManagerActivity) {
            SearchManagerActivity searchManagerActivity = (SearchManagerActivity) obj;
            for (a aVar : TheRouter.g()) {
                try {
                    Boolean bool = (Boolean) aVar.a("boolean", searchManagerActivity, new b("boolean", "back_exit", 0, "", "com.transsion.search.activity.SearchManagerActivity", "backExitSearch", false, "No desc."));
                    if (bool != null) {
                        searchManagerActivity.backExitSearch = bool.booleanValue();
                    }
                } catch (Exception e11) {
                    if (TheRouter.m()) {
                        e11.printStackTrace();
                    }
                }
                try {
                    Integer num = (Integer) aVar.a("int", searchManagerActivity, new b("int", NativeComponentConstants.KEY_COMPONENT_TYPE, 0, "", "com.transsion.search.activity.SearchManagerActivity", "searchType", false, "No desc."));
                    if (num != null) {
                        searchManagerActivity.searchType = num.intValue();
                    }
                } catch (Exception e12) {
                    if (TheRouter.m()) {
                        e12.printStackTrace();
                    }
                }
                try {
                    String str = (String) aVar.a("java.lang.String", searchManagerActivity, new b("java.lang.String", "keyword", 0, "", "com.transsion.search.activity.SearchManagerActivity", "keyWord", false, "No desc."));
                    if (str != null) {
                        searchManagerActivity.keyWord = str;
                    }
                } catch (Exception e13) {
                    if (TheRouter.m()) {
                        e13.printStackTrace();
                    }
                }
            }
        }
    }
}
