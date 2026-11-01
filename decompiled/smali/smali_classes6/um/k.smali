.class public final synthetic Lum/k;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic a:Lcom/transsion/web/share/WebShareDialog;

.field public final synthetic b:Lum/l;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/web/share/WebShareDialog;Lum/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lum/k;->a:Lcom/transsion/web/share/WebShareDialog;

    iput-object p2, p0, Lum/k;->b:Lum/l;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lum/k;->a:Lcom/transsion/web/share/WebShareDialog;

    iget-object v1, p0, Lum/k;->b:Lum/l;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/lang/String;

    invoke-static {v0, v1, p1, p2, p3}, Lum/l;->z(Lcom/transsion/web/share/WebShareDialog;Lum/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
