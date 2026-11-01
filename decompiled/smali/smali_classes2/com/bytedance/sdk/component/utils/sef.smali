.class public Lcom/bytedance/sdk/component/utils/sef;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/utils/sef$sP;,
        Lcom/bytedance/sdk/component/utils/sef$Sj;
    }
.end annotation


# static fields
.field private static final Sj:Lcom/bytedance/sdk/component/utils/sef$Sj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/component/utils/sef$sP;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/utils/sef$sP;-><init>(Lcom/bytedance/sdk/component/utils/sef$1;)V

    sput-object v0, Lcom/bytedance/sdk/component/utils/sef;->Sj:Lcom/bytedance/sdk/component/utils/sef$Sj;

    return-void
.end method

.method public static Sj(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/component/utils/sef;->Sj:Lcom/bytedance/sdk/component/utils/sef$Sj;

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/sdk/component/utils/sef$Sj;->Sj(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method
