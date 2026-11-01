.class public final synthetic Lcom/transsion/web/share/g;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/transsion/web/share/k;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/transsion/web/share/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/web/share/g;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/transsion/web/share/g;->b:Lcom/transsion/web/share/k;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/web/share/g;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/transsion/web/share/g;->b:Lcom/transsion/web/share/k;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/lang/String;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/transsion/web/share/k;->d(Landroid/content/Context;Lcom/transsion/web/share/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
