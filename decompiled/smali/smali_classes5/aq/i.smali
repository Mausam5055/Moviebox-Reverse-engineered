.class public final Laq/i;
.super Landroidx/lifecycle/t0;


# instance fields
.field private final a:Landroidx/lifecycle/b0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Laq/i;->a:Landroidx/lifecycle/b0;

    return-void
.end method


# virtual methods
.method public final b()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Laq/i;->a:Landroidx/lifecycle/b0;

    return-object v0
.end method
