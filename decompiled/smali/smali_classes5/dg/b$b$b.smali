.class public final Ldg/b$b$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldg/b$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field static final synthetic a:Ldg/b$b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldg/b$b$b;

    invoke-direct {v0}, Ldg/b$b$b;-><init>()V

    sput-object v0, Ldg/b$b$b;->a:Ldg/b$b$b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
