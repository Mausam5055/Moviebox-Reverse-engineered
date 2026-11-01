.class public final synthetic Lcom/cloud/tmc/integration/ui/native/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;

.field public final synthetic b:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/integration/ui/native/a;->a:Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;

    iput-object p2, p0, Lcom/cloud/tmc/integration/ui/native/a;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/native/a;->a:Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/native/a;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {v0, v1}, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->a(Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    return-void
.end method
