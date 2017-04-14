
package com.kovka.business;

import com.kovka.common.data.SketchProduct;
import com.kovka.common.exception.EntityNotFoundException;
import com.kovka.common.exception.InternalErrorException;

public interface ISketchProductManager {

    public void update(SketchProduct data) throws InternalErrorException, EntityNotFoundException;

    public void delete(SketchProduct data) throws InternalErrorException, EntityNotFoundException;


}