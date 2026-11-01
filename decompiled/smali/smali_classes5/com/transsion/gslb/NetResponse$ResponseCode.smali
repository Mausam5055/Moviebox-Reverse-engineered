.class public interface abstract annotation Lcom/transsion/gslb/NetResponse$ResponseCode;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/gslb/NetResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ResponseCode"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final ERROR:I = -0x1

.field public static final NOT_MODIFIED:I = 0x1

.field public static final OK:I = 0x0

.field public static final SDK_ERROR:I = 0x2
