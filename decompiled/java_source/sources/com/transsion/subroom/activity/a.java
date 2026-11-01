package com.transsion.subroom.activity;

import com.transsion.home.R$mipmap;
import com.transsion.home.bean.BottomTabItem;
import com.transsion.home.p004enum.BottomTabType;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f54627a = new a();

    private a() {
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final int a(BottomTabItem bottomTabItem) {
        if (bottomTabItem != null && bottomTabItem.isLargeUiType()) {
            return Intrinsics.c(bottomTabItem.getBtTabCode(), BottomTabType.TAB_CODE_COMMUNITY) ? R$mipmap.ic_tab_big_community : com.transsion.subroom.R$mipmap.ic_tab_bottom_large_default;
        }
        String btTabCode = bottomTabItem != null ? bottomTabItem.getBtTabCode() : null;
        if (btTabCode != null) {
            switch (btTabCode.hashCode()) {
                case -1636482787:
                    if (btTabCode.equals(BottomTabType.TAB_CODE_SUBSCRIPTION)) {
                        return R$mipmap.ic_tab_subscription_unactive;
                    }
                    break;
                case -1509822498:
                    if (btTabCode.equals(BottomTabType.TAB_CODE_SHORT_TV)) {
                        return R$mipmap.ic_tab_short_tv_unactive;
                    }
                    break;
                case -195667765:
                    if (btTabCode.equals(BottomTabType.TAB_CODE_DOWNLOAD)) {
                        return R$mipmap.ic_tab_downloads_unactive_dark;
                    }
                    break;
                case 2456:
                    if (btTabCode.equals(BottomTabType.TAB_CODE_ME)) {
                        return R$mipmap.ic_tab_me_unactive_dark;
                    }
                    break;
                case 2223327:
                    if (btTabCode.equals(BottomTabType.TAB_CODE_HOME)) {
                        return R$mipmap.ic_tab_home_unactive_dark;
                    }
                    break;
                case 73725445:
                    if (btTabCode.equals(BottomTabType.TAB_CODE_MUSIC)) {
                        return R$mipmap.ic_tab_music_unactive_dark;
                    }
                    break;
                case 74472988:
                    if (btTabCode.equals(BottomTabType.TAB_CODE_NOVEL)) {
                        return R$mipmap.ic_tab_novel_unactive;
                    }
                    break;
                case 399530551:
                    if (btTabCode.equals(BottomTabType.TAB_CODE_PREMIUM)) {
                        return R$mipmap.ic_tab_premium_unactive;
                    }
                    break;
            }
        }
        return 0;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final int b(BottomTabItem bottomTabItem) {
        if (bottomTabItem != null && bottomTabItem.isLargeUiType()) {
            return Intrinsics.c(bottomTabItem.getBtTabCode(), BottomTabType.TAB_CODE_COMMUNITY) ? R$mipmap.ic_tab_big_community : com.transsion.subroom.R$mipmap.ic_tab_bottom_large_default;
        }
        String btTabCode = bottomTabItem != null ? bottomTabItem.getBtTabCode() : null;
        if (btTabCode != null) {
            switch (btTabCode.hashCode()) {
                case -1636482787:
                    if (btTabCode.equals(BottomTabType.TAB_CODE_SUBSCRIPTION)) {
                        return R$mipmap.ic_tab_subscription_active;
                    }
                    break;
                case -1509822498:
                    if (btTabCode.equals(BottomTabType.TAB_CODE_SHORT_TV)) {
                        return R$mipmap.ic_tab_short_tv_active;
                    }
                    break;
                case -195667765:
                    if (btTabCode.equals(BottomTabType.TAB_CODE_DOWNLOAD)) {
                        return R$mipmap.ic_tab_downloads_active;
                    }
                    break;
                case 2456:
                    if (btTabCode.equals(BottomTabType.TAB_CODE_ME)) {
                        return R$mipmap.ic_tab_me_active;
                    }
                    break;
                case 2223327:
                    if (btTabCode.equals(BottomTabType.TAB_CODE_HOME)) {
                        return R$mipmap.ic_tab_home_active;
                    }
                    break;
                case 73725445:
                    if (btTabCode.equals(BottomTabType.TAB_CODE_MUSIC)) {
                        return R$mipmap.ic_tab_music_active;
                    }
                    break;
                case 74472988:
                    if (btTabCode.equals(BottomTabType.TAB_CODE_NOVEL)) {
                        return R$mipmap.ic_tab_novel_active;
                    }
                    break;
                case 399530551:
                    if (btTabCode.equals(BottomTabType.TAB_CODE_PREMIUM)) {
                        return R$mipmap.ic_tab_premium_activit;
                    }
                    break;
            }
        }
        return 0;
    }
}
