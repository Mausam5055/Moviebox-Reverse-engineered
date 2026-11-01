.class public interface abstract annotation Lpi/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpi/b$a;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final a:Lpi/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lpi/b$a;->a:Lpi/b$a;

    sput-object v0, Lpi/b;->a:Lpi/b$a;

    return-void
.end method
