.class public final synthetic Lum/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/activity/result/a;


# instance fields
.field public final synthetic a:Lum/l;


# direct methods
.method public synthetic constructor <init>(Lum/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lum/d;->a:Lum/l;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lum/d;->a:Lum/l;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-static {v0, p1}, Lum/l;->B(Lum/l;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method
