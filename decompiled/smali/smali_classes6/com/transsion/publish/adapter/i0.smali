.class public final synthetic Lcom/transsion/publish/adapter/i0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/publish/api/VsMediaInfo;

.field public final synthetic b:Lcom/transsion/publish/adapter/k0;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/publish/api/VsMediaInfo;Lcom/transsion/publish/adapter/k0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/publish/adapter/i0;->a:Lcom/transsion/publish/api/VsMediaInfo;

    iput-object p2, p0, Lcom/transsion/publish/adapter/i0;->b:Lcom/transsion/publish/adapter/k0;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/publish/adapter/i0;->a:Lcom/transsion/publish/api/VsMediaInfo;

    iget-object v1, p0, Lcom/transsion/publish/adapter/i0;->b:Lcom/transsion/publish/adapter/k0;

    invoke-static {v0, v1}, Lcom/transsion/publish/adapter/k0;->h(Lcom/transsion/publish/api/VsMediaInfo;Lcom/transsion/publish/adapter/k0;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
