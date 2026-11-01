package com.transsion.moviedetail.staff;

import androidx.annotation.Keep;
import com.therouter.TheRouter;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
@Keep
public class MovieStaffActivity__TheRouter__Autowired {
    public static final String TAG = "Created by kymjs, and APT Version is 1.3.0.";
    public static final String THEROUTER_APT_VERSION = "1.3.0";

    public static void autowiredInject(Object obj) {
        if (obj instanceof MovieStaffActivity) {
            MovieStaffActivity movieStaffActivity = (MovieStaffActivity) obj;
            Iterator it = TheRouter.g().iterator();
            while (it.hasNext()) {
                try {
                    String str = (String) ((bg.a) it.next()).a("java.lang.String", movieStaffActivity, new com.therouter.router.b("java.lang.String", "id", 0, "", "com.transsion.moviedetail.staff.MovieStaffActivity", "id", false, "No desc."));
                    if (str != null) {
                        movieStaffActivity.id = str;
                    }
                } catch (Exception e11) {
                    if (TheRouter.m()) {
                        e11.printStackTrace();
                    }
                }
            }
        }
    }
}
