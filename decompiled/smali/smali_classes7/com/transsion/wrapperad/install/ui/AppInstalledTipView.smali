.class public final Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcom/transsion/wrapperad/install/ui/a;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\'\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ!\u0010\u0013\u001a\u00020\u00122\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0017\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0017\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u0018H\u0014\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001dJ\u0017\u0010\u001f\u001a\u00020\u00122\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0015\u0010!\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008!\u0010 J\r\u0010\"\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\"\u0010\u001dJ\r\u0010#\u001a\u00020\u0012\u00a2\u0006\u0004\u0008#\u0010\u001dR\u001e\u0010\'\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010)R\u0018\u0010-\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R\u0016\u00100\u001a\u00020.8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010/\u00a8\u00061"
    }
    d2 = {
        "Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;",
        "Landroid/widget/FrameLayout;",
        "Lcom/transsion/wrapperad/install/ui/a;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "",
        "getClassTag",
        "()Ljava/lang/String;",
        "Landroid/app/Activity;",
        "activity",
        "Lcom/transsion/wrapperad/install/appinfo/AppChangeInfo;",
        "appChangeInfo",
        "",
        "d",
        "(Landroid/app/Activity;Lcom/transsion/wrapperad/install/appinfo/AppChangeInfo;)V",
        "widthPX",
        "f",
        "(I)V",
        "Landroid/content/res/Configuration;",
        "newConfig",
        "onConfigurationChanged",
        "(Landroid/content/res/Configuration;)V",
        "onAppInstalledTipEnd",
        "()V",
        "onAppInstalledTipStart",
        "onActivityResume",
        "(Landroid/app/Activity;)V",
        "onActivityPause",
        "checkShow",
        "reset",
        "Ljava/lang/ref/WeakReference;",
        "a",
        "Ljava/lang/ref/WeakReference;",
        "mActivityRef",
        "b",
        "Lcom/transsion/wrapperad/install/appinfo/AppChangeInfo;",
        "Landroid/view/View;",
        "c",
        "Landroid/view/View;",
        "tipView",
        "",
        "Z",
        "isShowingNotified",
        "wrapperad_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;

.field private b:Lcom/transsion/wrapperad/install/appinfo/AppChangeInfo;

.field private c:Landroid/view/View;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;->c(Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;Lcom/transsion/wrapperad/install/appinfo/AppChangeInfo;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;->e(Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;Lcom/transsion/wrapperad/install/appinfo/AppChangeInfo;Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method private static final c(Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;)Lkotlin/Unit;
    .locals 2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    sget-object p0, Lii/b;->a:Lii/b;

    const-string v0, "AppInstallTip"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lii/b;->e(Ljava/lang/String;Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final d(Landroid/app/Activity;Lcom/transsion/wrapperad/install/appinfo/AppChangeInfo;)V
    .locals 4

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;->c:Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/wrapperad/R$layout;->base_ui_app_installed_tip_view_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;->c:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    sget-object v0, Lcom/transsion/wrapperad/install/a;->a:Lcom/transsion/wrapperad/install/a;

    invoke-direct {p0}, Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;->getClassTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> showView() --> \u5c55\u793a"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/wrapperad/install/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;->c:Landroid/view/View;

    if-eqz v0, :cond_2

    sget v1, Lcom/transsion/wrapperad/R$id;->ivIcon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v0, :cond_2

    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {p2}, Lcom/transsion/wrapperad/install/appinfo/AppChangeInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    :cond_2
    iget-object v0, p0, Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;->c:Landroid/view/View;

    if-eqz v0, :cond_3

    sget v1, Lcom/transsion/wrapperad/R$id;->flContainer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/transsion/wrapperad/install/ui/f;

    invoke-direct {v1, p0, p2, p1}, Lcom/transsion/wrapperad/install/ui/f;-><init>(Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;Lcom/transsion/wrapperad/install/appinfo/AppChangeInfo;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object p1, p0, Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;->c:Landroid/view/View;

    if-eqz p1, :cond_5

    sget v0, Lcom/transsion/wrapperad/R$id;->tvTitle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_5

    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p2}, Lcom/transsion/wrapperad/install/appinfo/AppChangeInfo;->getAppName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " app installed."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lyx/a;->a:Lyx/a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "getContext(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsion/wrapperad/install/appinfo/AppChangeInfo;->getAppName()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_4

    const-string p2, ""

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {v1, v2, p2, v0}, Lyx/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :goto_2
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_3
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    :cond_5
    return-void

    :cond_6
    :goto_4
    sget-object p1, Lcom/transsion/wrapperad/install/a;->a:Lcom/transsion/wrapperad/install/a;

    invoke-direct {p0}, Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;->getClassTag()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " --> showView() --> activity == null || activity.isFinishing || activity.isDestroyed"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/wrapperad/install/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private static final e(Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;Lcom/transsion/wrapperad/install/appinfo/AppChangeInfo;Landroid/app/Activity;Landroid/view/View;)V
    .locals 3

    sget-object p3, Lti/e;->a:Lti/e;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/wrapperad/install/appinfo/AppChangeInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lti/e;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    sget-object p3, Lcom/transsion/wrapperad/install/a;->a:Lcom/transsion/wrapperad/install/a;

    invoke-direct {p0}, Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;->getClassTag()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " --> showView() --> \u5df2\u5b89\u88c5\u5e94\u7528\u88ab\u6253\u5f00"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/transsion/wrapperad/install/a;->a(Ljava/lang/String;)V

    move p0, v0

    goto :goto_0

    :cond_0
    sget-object p3, Lcom/transsion/wrapperad/install/a;->a:Lcom/transsion/wrapperad/install/a;

    invoke-direct {p0}, Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;->getClassTag()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " --> showView() --> \u6253\u5f00\u5e94\u7528\u5931\u8d25"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/transsion/wrapperad/install/a;->a(Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    const-string v1, "dialog_name"

    const-string v2, "ad_active"

    invoke-interface {p3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "activity_name"

    invoke-interface {p3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "package_name"

    invoke-virtual {p1}, Lcom/transsion/wrapperad/install/appinfo/AppChangeInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "is_success"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lhj/i;->a:Lhj/i;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "getSimpleName(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "click"

    invoke-virtual {p0, p1, p2, p3}, Lhj/i;->s(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    sget-object p0, Lcom/transsion/wrapperad/install/ui/d;->a:Lcom/transsion/wrapperad/install/ui/d;

    invoke-virtual {p0, v0}, Lcom/transsion/wrapperad/install/ui/d;->h(Z)V

    sget-object p0, Lii/b;->a:Lii/b;

    const-string p1, "AppInstallTip"

    invoke-virtual {p0, p1, v0}, Lii/b;->e(Ljava/lang/String;Z)V

    return-void
.end method

.method private final f(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final getClassTag()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final checkShow()V
    .locals 8

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    sget-object v1, Lii/b;->a:Lii/b;

    const-string v2, "AppInstallTip"

    invoke-virtual {v1, v2}, Lii/b;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    sget-object v3, Lcom/transsion/wrapperad/install/ui/d;->a:Lcom/transsion/wrapperad/install/ui/d;

    invoke-virtual {v3}, Lcom/transsion/wrapperad/install/ui/d;->j()Lcom/transsion/wrapperad/install/appinfo/AppChangeInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;->a:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;->b:Lcom/transsion/wrapperad/install/appinfo/AppChangeInfo;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v3, :cond_1

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "dialog_name"

    const-string v7, "ad_active"

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "activity_name"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "module_name"

    const-string v7, "show"

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "package_name"

    invoke-virtual {v3}, Lcom/transsion/wrapperad/install/appinfo/AppChangeInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lhj/i;->a:Lhj/i;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v7, "getSimpleName(...)"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "dialog_show"

    invoke-virtual {v6, v4, v7, v5}, Lhj/i;->s(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    iput-object v3, p0, Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;->b:Lcom/transsion/wrapperad/install/appinfo/AppChangeInfo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;->d:Z

    if-eqz v3, :cond_2

    iput-boolean v5, p0, Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;->d:Z

    :cond_2
    const/4 v3, 0x2

    invoke-static {v1, v2, v5, v3, v4}, Lii/b;->d(Lii/b;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v2}, Lii/b;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;->b:Lcom/transsion/wrapperad/install/appinfo/AppChangeInfo;

    if-eqz v0, :cond_6

    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;->d:Z

    new-instance v3, Lcom/transsion/wrapperad/install/ui/e;

    invoke-direct {v3, p0}, Lcom/transsion/wrapperad/install/ui/e;-><init>(Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;)V

    invoke-virtual {v1, v2, v3}, Lii/b;->f(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    iget-object v1, p0, Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;->a:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/app/Activity;

    :cond_5
    invoke-direct {p0, v4, v0}, Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;->d(Landroid/app/Activity;Lcom/transsion/wrapperad/install/appinfo/AppChangeInfo;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public final onActivityPause(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/wrapperad/install/a;->a:Lcom/transsion/wrapperad/install/a;

    invoke-direct {p0}, Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;->getClassTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> onActivityPause "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/wrapperad/install/a;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;->reset()V

    return-void
.end method

.method public final onActivityResume(Landroid/app/Activity;)V
    .locals 3

    sget-object v0, Lcom/transsion/wrapperad/install/a;->a:Lcom/transsion/wrapperad/install/a;

    invoke-direct {p0}, Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;->getClassTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> onActivityResume "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/wrapperad/install/a;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;->a:Ljava/lang/ref/WeakReference;

    sget-object p1, Lcom/transsion/wrapperad/install/ui/d;->a:Lcom/transsion/wrapperad/install/ui/d;

    invoke-virtual {p1, p0}, Lcom/transsion/wrapperad/install/ui/d;->l(Lcom/transsion/wrapperad/install/ui/a;)V

    invoke-virtual {p0}, Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;->checkShow()V

    return-void
.end method

.method public onAppInstalledTipEnd()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;->b:Lcom/transsion/wrapperad/install/appinfo/AppChangeInfo;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "dialog_name"

    const-string v3, "ad_active"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "activity_name"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;->b:Lcom/transsion/wrapperad/install/appinfo/AppChangeInfo;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/wrapperad/install/appinfo/AppChangeInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    const-string v2, " appChangeInfo == null"

    :cond_1
    const-string v3, "package_name"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "module_name"

    const-string v3, "auto_close"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lhj/i;->a:Lhj/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "getSimpleName(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "dialog_show"

    invoke-virtual {v2, v0, v3, v1}, Lhj/i;->s(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;->reset()V

    sget-object v0, Lii/b;->a:Lii/b;

    const-string v1, "AppInstallTip"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lii/b;->e(Ljava/lang/String;Z)V

    return-void
.end method

.method public onAppInstalledTipStart()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;->checkShow()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq p1, v0, :cond_1

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Llg/a;->a:Llg/a$a;

    invoke-direct {p0}, Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;->getClassTag()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> onConfigurationChanged() --> \u6a2a\u5c4f \u6a21\u5f0f"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2, v3, v1}, Llg/a$a;->g(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    const/high16 p1, 0x43a80000    # 336.0f

    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;->f(I)V

    goto :goto_0

    :cond_1
    sget-object p1, Llg/a;->a:Llg/a$a;

    invoke-direct {p0}, Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;->getClassTag()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> onConfigurationChanged() --> \u7ad6\u5c4f \u6a21\u5f0f"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2, v3, v1}, Llg/a$a;->g(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result p1

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    mul-int/2addr v0, v3

    sub-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;->f(I)V

    :goto_0
    return-void
.end method

.method public final reset()V
    .locals 1

    sget-object v0, Lcom/transsion/wrapperad/install/ui/d;->a:Lcom/transsion/wrapperad/install/ui/d;

    invoke-virtual {v0}, Lcom/transsion/wrapperad/install/ui/d;->d()V

    return-void
.end method
