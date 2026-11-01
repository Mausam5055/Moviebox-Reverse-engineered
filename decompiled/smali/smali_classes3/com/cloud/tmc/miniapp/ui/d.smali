.class public final synthetic Lcom/cloud/tmc/miniapp/ui/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;

.field public final synthetic b:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/d;->a:Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/d;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/d;->a:Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/d;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-static {v0, v1}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->Y(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    return-void
.end method
