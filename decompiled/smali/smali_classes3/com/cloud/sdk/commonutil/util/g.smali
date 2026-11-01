.class public final synthetic Lcom/cloud/sdk/commonutil/util/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function0;

.field public final synthetic b:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/sdk/commonutil/util/g;->a:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/cloud/sdk/commonutil/util/g;->b:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/sdk/commonutil/util/g;->a:Lkotlin/jvm/functions/Function0;

    iget-object v1, p0, Lcom/cloud/sdk/commonutil/util/g;->b:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
