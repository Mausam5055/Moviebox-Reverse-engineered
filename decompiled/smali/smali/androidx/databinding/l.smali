.class public Landroidx/databinding/l;
.super Landroidx/databinding/c;


# static fields
.field private static final f:Landroidx/databinding/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/databinding/l$a;

    invoke-direct {v0}, Landroidx/databinding/l$a;-><init>()V

    sput-object v0, Landroidx/databinding/l;->f:Landroidx/databinding/c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Landroidx/databinding/l;->f:Landroidx/databinding/c$a;

    invoke-direct {p0, v0}, Landroidx/databinding/c;-><init>(Landroidx/databinding/c$a;)V

    return-void
.end method
