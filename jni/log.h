#ifndef LOG_H
#define LOG_H 1

#include <android/log.h>

#ifdef __cplusplus
extern "C" {
#endif

extern android_LogPriority xh_log_priority;

#define LOG_TAG "LOGXX"
#define LOGD(...) __android_log_print(ANDROID_LOG_DEBUG, LOG_TAG, __VA_ARGS__)
#define LOGI(...) __android_log_print(ANDROID_LOG_INFO,  LOG_TAG, __VA_ARGS__)
#define LOGW(...) __android_log_print(ANDROID_LOG_WARN,  LOG_TAG, __VA_ARGS__)
#define LOGE(...) __android_log_print(ANDROID_LOG_ERROR, LOG_TAG, __VA_ARGS__)

#ifdef __cplusplus
}
#endif

#endif
