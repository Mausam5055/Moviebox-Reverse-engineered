package com.cloud.tmc.integration.ui.fragment;

import android.app.Activity;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.cloud.tmc.integration.chain.page.PageChainContext;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.Page;
import com.cloud.tmc.integration.structure.PageContext;
import com.cloud.tmc.integration.ui.action.KeyBoardAction;
import com.cloud.tmc.integration.ui.action.TabBarAction;
import com.cloud.tmc.integration.ui.action.TitleBarAction;

/* JADX INFO: loaded from: classes3.dex */
public abstract class TmcFragment extends Fragment implements PageContext, TitleBarAction, TabBarAction, KeyBoardAction {

    @Nullable
    protected App app;

    @Nullable
    protected Page page;
    protected PageChainContext pageChainContext = new PageChainContext();
    protected ExitType exitType = ExitType.BACK;

    public enum ExitType {
        BACK(0, "返回"),
        REFRESH(1, "刷新"),
        CLOSE_APP(2, "关闭小程序"),
        PRIVACY_REFUSE(3, "隐私拒绝"),
        NEW_PAGE_ENTER(4, "新页面进入"),
        BACK_CLEAR_PRE_PAGE(5, "退出并清除上一页");

        int code;
        String des;

        ExitType(int i11, String str) {
            this.code = i11;
            this.des = str;
        }

        public int getCode() {
            return this.code;
        }

        public String getDes() {
            return this.des;
        }
    }

    public abstract Boolean exitFullScreen();

    @Override // com.cloud.tmc.integration.structure.PageContext
    @Nullable
    public /* bridge */ /* synthetic */ Activity getActivity() {
        return super.getActivity();
    }

    public abstract String getCurrentPath();

    @Nullable
    public Page getPage() {
        return this.page;
    }

    public void setExitType(ExitType exitType) {
        this.exitType = exitType;
    }

    public abstract void setPage(@NonNull Page page);
}
