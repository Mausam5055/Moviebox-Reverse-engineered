.class public final synthetic Llk/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/bean/HomePopupEntity;

.field public final synthetic b:Lkotlin/jvm/functions/Function1;

.field public final synthetic c:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/bean/HomePopupEntity;Lkotlin/jvm/functions/Function1;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llk/b;->a:Lcom/transsion/bean/HomePopupEntity;

    iput-object p2, p0, Llk/b;->b:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Llk/b;->c:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Llk/b;->a:Lcom/transsion/bean/HomePopupEntity;

    iget-object v1, p0, Llk/b;->b:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Llk/b;->c:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Llk/c;->c(Lcom/transsion/bean/HomePopupEntity;Lkotlin/jvm/functions/Function1;Landroid/app/Activity;)V

    return-void
.end method
