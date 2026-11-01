.class public final synthetic Lcom/transsion/web/share/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/activity/result/a;


# instance fields
.field public final synthetic a:Lcom/transsion/web/share/k;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/web/share/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/web/share/j;->a:Lcom/transsion/web/share/k;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/web/share/j;->a:Lcom/transsion/web/share/k;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-static {v0, p1}, Lcom/transsion/web/share/k;->c(Lcom/transsion/web/share/k;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method
