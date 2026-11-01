.class public final synthetic Lnv/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/activity/result/a;


# instance fields
.field public final synthetic a:Lnv/c;


# direct methods
.method public synthetic constructor <init>(Lnv/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnv/a;->a:Lnv/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lnv/a;->a:Lnv/c;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-static {v0, p1}, Lnv/c;->b(Lnv/c;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method
