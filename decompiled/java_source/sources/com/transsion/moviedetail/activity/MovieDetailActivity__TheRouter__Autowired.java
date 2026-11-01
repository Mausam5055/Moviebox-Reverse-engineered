package com.transsion.moviedetail.activity;

import androidx.annotation.Keep;
import bg.a;
import com.therouter.TheRouter;
import com.therouter.router.b;

/* JADX INFO: loaded from: classes5.dex */
@Keep
public class MovieDetailActivity__TheRouter__Autowired {
    public static final String TAG = "Created by kymjs, and APT Version is 1.3.0.";
    public static final String THEROUTER_APT_VERSION = "1.3.0";

    public static void autowiredInject(Object obj) {
        String str;
        String str2 = "boolean";
        if (obj instanceof MovieDetailActivity) {
            MovieDetailActivity movieDetailActivity = (MovieDetailActivity) obj;
            for (a aVar : TheRouter.g()) {
                try {
                    Boolean bool = (Boolean) aVar.a(str2, movieDetailActivity, new b("boolean", "autoDownload", 0, "", "com.transsion.moviedetail.activity.MovieDetailActivity", "autoDownload", false, "No desc."));
                    if (bool != null) {
                        movieDetailActivity.autoDownload = bool.booleanValue();
                    }
                } catch (Exception e11) {
                    if (TheRouter.m()) {
                        e11.printStackTrace();
                    }
                }
                try {
                    Boolean bool2 = (Boolean) aVar.a(str2, movieDetailActivity, new b("boolean", "autoPlay", 0, "", "com.transsion.moviedetail.activity.MovieDetailActivity", "autoPlay", false, "No desc."));
                    if (bool2 != null) {
                        movieDetailActivity.autoPlay = bool2.booleanValue();
                    }
                } catch (Exception e12) {
                    if (TheRouter.m()) {
                        e12.printStackTrace();
                    }
                }
                try {
                    Integer num = (Integer) aVar.a("int", movieDetailActivity, new b("int", "season", 0, "", "com.transsion.moviedetail.activity.MovieDetailActivity", "curSeason", false, "No desc."));
                    if (num != null) {
                        movieDetailActivity.curSeason = num.intValue();
                    }
                } catch (Exception e13) {
                    if (TheRouter.m()) {
                        e13.printStackTrace();
                    }
                }
                try {
                    Integer num2 = (Integer) aVar.a("int", movieDetailActivity, new b("int", "subject_type", 0, "", "com.transsion.moviedetail.activity.MovieDetailActivity", "subjectYpe", false, "No desc."));
                    if (num2 != null) {
                        movieDetailActivity.subjectYpe = num2.intValue();
                    }
                } catch (Exception e14) {
                    if (TheRouter.m()) {
                        e14.printStackTrace();
                    }
                }
                try {
                    Integer num3 = (Integer) aVar.a("int", movieDetailActivity, new b("int", "yy_preload_id", 0, "", "com.transsion.moviedetail.activity.MovieDetailActivity", "preloadId", false, "No desc."));
                    if (num3 != null) {
                        movieDetailActivity.preloadId = num3.intValue();
                    }
                } catch (Exception e15) {
                    if (TheRouter.m()) {
                        e15.printStackTrace();
                    }
                }
                try {
                    String str3 = (String) aVar.a("java.lang.String", movieDetailActivity, new b("java.lang.String", "id", 0, "", "com.transsion.moviedetail.activity.MovieDetailActivity", "id", false, "No desc."));
                    if (str3 != null) {
                        movieDetailActivity.id = str3;
                    }
                } catch (Exception e16) {
                    if (TheRouter.m()) {
                        e16.printStackTrace();
                    }
                }
                try {
                    String str4 = (String) aVar.a("java.lang.String", movieDetailActivity, new b("java.lang.String", "module_name", 0, "", "com.transsion.moviedetail.activity.MovieDetailActivity", "moduleName", false, "No desc."));
                    if (str4 != null) {
                        movieDetailActivity.moduleName = str4;
                    }
                } catch (Exception e17) {
                    if (TheRouter.m()) {
                        e17.printStackTrace();
                    }
                }
                try {
                    String str5 = (String) aVar.a("java.lang.String", movieDetailActivity, new b("java.lang.String", "ops", 0, "", "com.transsion.moviedetail.activity.MovieDetailActivity", "ops", false, "No desc."));
                    if (str5 != null) {
                        movieDetailActivity.ops = str5;
                    }
                } catch (Exception e18) {
                    if (TheRouter.m()) {
                        e18.printStackTrace();
                    }
                }
                try {
                    String str6 = (String) aVar.a("java.lang.String", movieDetailActivity, new b("java.lang.String", "resourceId", 0, "", "com.transsion.moviedetail.activity.MovieDetailActivity", "autoPlayResourceId", false, "No desc."));
                    if (str6 != null) {
                        movieDetailActivity.autoPlayResourceId = str6;
                    }
                } catch (Exception e19) {
                    if (TheRouter.m()) {
                        e19.printStackTrace();
                    }
                }
                try {
                    str = str2;
                    try {
                        Long l11 = (Long) aVar.a("long", movieDetailActivity, new b("long", "ts_enter", 0, "", "com.transsion.moviedetail.activity.MovieDetailActivity", "tsEnter", false, "No desc."));
                        if (l11 != null) {
                            movieDetailActivity.tsEnter = l11.longValue();
                        }
                    } catch (Exception e20) {
                        e = e20;
                        if (TheRouter.m()) {
                            e.printStackTrace();
                        }
                    }
                } catch (Exception e21) {
                    e = e21;
                    str = str2;
                }
                str2 = str;
            }
        }
    }
}
