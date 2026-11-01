.class public final Lcom/transsion/postdetail/ad/BaseVideoAdHelper$c;
.super Ljava/lang/Object;

# interfaces
.implements Lzm/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->L(ZLkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

.field final synthetic b:Lkotlin/jvm/functions/Function0;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$c;->a:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    iput-object p2, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$c;->b:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$c;->a:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    invoke-virtual {v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->P()V

    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$c;->b:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method
