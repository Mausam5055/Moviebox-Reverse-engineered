.class Lcom/bytedance/sdk/openadsdk/EjP/Ym$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Landroid/webkit/WebView;

.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

.field final synthetic sP:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/EjP/Ym;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym$3;->TKC:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym$3;->Sj:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym$3;->sP:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym$3;->Sj:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym$3;->sP:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/sef;->Sj(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method
