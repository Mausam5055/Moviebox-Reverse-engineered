.class public Lb8/c;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lb8/b;->e()Lb8/b;

    move-result-object v0

    invoke-virtual {v0}, Lb8/b;->f()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lb8/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
