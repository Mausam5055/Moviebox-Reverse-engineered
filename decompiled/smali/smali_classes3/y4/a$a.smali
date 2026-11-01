.class public Ly4/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly4/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ly4/g;

.field public final b:Ljava/lang/String;

.field public c:Lz4/l;

.field public d:Ly4/g;


# direct methods
.method public constructor <init>(Ly4/g;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly4/a$a;->a:Ly4/g;

    iput-object p2, p0, Ly4/a$a;->b:Ljava/lang/String;

    return-void
.end method
