/**
 * Copyright 2010, Petascan Ltd.
 * 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.Ope
 */


package dremel.common;

import java.io.PrintStream;


/**
 * @author camuelg
 *
 */
aspect AvroTestTraceAspect extends AbstractTrace {

    pointcut classes();//: within(AvroTest); // || within(AvroTest.WriterFacadeImpl) || within(AvroTest.ScannerFacade);

	pointcut constructors();//: execution(* *(..));

	pointcut methods(): execution(* generateRandomDataInternal(..)) ;
	
	public static void activate(PrintStream s) {
		AvroTestTraceAspect.aspectOf().initStream(System.err);	
	}

}
