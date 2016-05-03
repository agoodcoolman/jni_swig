/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.8
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

package com.apress.swig;

public class AsyncUidProvider {
  private transient long swigCPtr;
  protected transient boolean swigCMemOwn;

  protected AsyncUidProvider(long cPtr, boolean cMemoryOwn) {
    swigCMemOwn = cMemoryOwn;
    swigCPtr = cPtr;
  }

  protected static long getCPtr(AsyncUidProvider obj) {
    return (obj == null) ? 0 : obj.swigCPtr;
  }

  protected void finalize() {
    delete();
  }

  public synchronized void delete() {
    if (swigCPtr != 0) {
      if (swigCMemOwn) {
        swigCMemOwn = false;
        UnixJNI.delete_AsyncUidProvider(swigCPtr);
      }
      swigCPtr = 0;
    }
  }

  protected void swigDirectorDisconnect() {
    swigCMemOwn = false;
    delete();
  }

  public void swigReleaseOwnership() {
    swigCMemOwn = false;
    UnixJNI.AsyncUidProvider_change_ownership(this, swigCPtr, false);
  }

  public void swigTakeOwnership() {
    swigCMemOwn = true;
    UnixJNI.AsyncUidProvider_change_ownership(this, swigCPtr, true);
  }

  public AsyncUidProvider() {
    this(UnixJNI.new_AsyncUidProvider(), true);
    UnixJNI.AsyncUidProvider_director_connect(this, swigCPtr, swigCMemOwn, true);
  }

  public void get() {
    UnixJNI.AsyncUidProvider_get(swigCPtr, this);
  }

  public void onUid(long uid) {
    if (getClass() == AsyncUidProvider.class) UnixJNI.AsyncUidProvider_onUid(swigCPtr, this, uid); else UnixJNI.AsyncUidProvider_onUidSwigExplicitAsyncUidProvider(swigCPtr, this, uid);
  }

}
